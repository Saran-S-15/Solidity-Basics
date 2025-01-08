The Twitter smart contract is a decentralized implementation of a simple microblogging platform on Ethereum. 
Key features include:
	•	Tweet Creation: Users can post tweets up to a configurable maximum length (default: 250 characters).
	•	Likes Management: Users can like or unlike tweets posted by others.
	•	Tweet Retrieval: Retrieve individual tweets or all tweets by a specific user.
	•	Admin Controls: The contract owner can update the maximum tweet length.
	•	Data Management: Tweets are stored in a mapping, where each user’s address maps to their array of tweets.
        •       Events: Events are created and emited once the User creates an account, likes an tweet, unlikes an tweet.
