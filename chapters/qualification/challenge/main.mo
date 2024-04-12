actor MotivationLetter {
    // Task #1: Corrected to `let` for immutability
    let name : Text = "Jiri Polednik";

    // Task #2: Corrected to `var` for mutability
    var message : Text = "I want to learn how to build scalable applications on the Internet Computer.";

    // Task #3: Correct `update` function and remove `self`
    public func setMessage(newMessage : Text) : async () {
        message := newMessage;
    };

    // Task #4: Correct `query` function and remove `self`
    public query func getMessage() : async Text {
        return message;
    };

    // Task #5: Correct `query` function and remove `self`
    public query func getName() : async Text {
        return name;
    };

    // Task #6:
    // Deploy your canister and submit the Canister ID on motokobootcamp.com.
    // Gain access to our secret OpenChat community and have your name included on the Legacy 
};
