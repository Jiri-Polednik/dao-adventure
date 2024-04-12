import Buffer "mo:base/Buffer";

actor {

    let name: Text = "Online Ore Organization";
    var manifesto: Text = "Online Ore Org Manifesto\n\n" #
        "Preamble\n" #
        "In the ever-evolving digital landscape, the need for accessible, open, and decentralized online resources has never been greater. Online Ore Org emerges as a beacon of collective action, committed to unlocking the untapped potential of the internet for the common good. We stand at the dawn of a new era, where information is not just consumed but shared, refined, and regenerated through the power of community.\n\n" #
        "Our Principles\n\n" #
        "- Decentralization: We believe in the power of distributed networks over centralized authorities. Our organization embodies this principle by fostering a community-driven approach to decision-making, resource allocation, and governance.\n\n" #
        "- Open Access: Knowledge is a public good. We advocate for the unrestricted access to information and online resources, empowering individuals and communities to learn, create, and innovate without barriers.\n\n" #
        "- Sustainability: In our quest for open access, we commit to practices that ensure the longevity and resilience of online resources. This includes supporting open-source projects, encouraging the ethical use of digital content, and promoting digital conservation efforts.\n\n" #
        "- Inclusivity: The internet belongs to everyone. Our organization strives to include diverse voices and perspectives, ensuring that underrepresented communities have equal opportunities to contribute to and benefit from the collective pool of knowledge.\n\n" #
        "- Innovation: We embrace new ideas and technologies that advance our mission. By fostering an environment of experimentation and creativity, we aim to discover novel solutions to the challenges of digital access and resource sharing.\n\n" #
        "Our Objectives\n\n" #
        "1. To Build and Maintain a Decentralized Platform: Develop a robust platform that supports the sharing, discovery, and collaborative improvement of online resources, leveraging blockchain and other decentralized technologies.\n\n" #
        "2. To Promote Digital Literacy: Educate and empower users to navigate, contribute to, and benefit from the digital world responsibly and effectively.\n\n" #
        "3. To Foster Community Engagement: Create a vibrant, active community of contributors, advocates, and users who support each other and the organization's mission.\n\n" #
        "4. To Advocate for Open Access Policies: Engage in advocacy to influence policy and practice around open access to information, championing the rights of the public to freely access and share knowledge.\n\n" #
        "5. To Innovate Sustainably: Invest in research and development of sustainable technologies and practices that ensure the long-term viability of online resources.\n\n" #
        "Call to Action\n\n" #
        "Join us in forging a future where the digital domain is more accessible, equitable, and decentralized. Whether you are a creator, educator, technologist, or simply a believer in the power of open access, your contribution is vital. Together, we can build a repository of knowledge that benefits humanity for generations to come.\n\n" #
        "Conclusion\n\n" #
        "Online Ore Org is more than an organization; it's a movement. A movement towards a future where knowledge and resources are not locked behind paywalls or controlled by a few but are freely available to all. It's a journey we embark on together, with the manifesto as our map and our shared values as the compass.";
   
    let goals = Buffer.Buffer<Text>(0);

    public shared query func getName() : async Text {
    return name;
  };

  public shared query func getManifesto() : async Text {
    return manifesto;
  };

  public func setManifesto(newManifesto : Text) : async () {
    manifesto := newManifesto;
    return;
  };

  public func addGoal(newGoal : Text) : async () {
    goals.add(newGoal);
    return;
  };

  public shared query func getGoals() : async [Text] {
    Buffer.toArray(goals);
  };
};