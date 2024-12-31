// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// 1. Use require to limit the length of the tweet to be only 280 characters

contract Twitter {
    //define our struct
    uint8 constant MAX_TWEET_LENGTH = 250;

    struct Tweet {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    mapping(address => Tweet[]) public tweets;

    function createTweet(string memory _tweet) public {
        require(
            bytes(_tweet).length <= MAX_TWEET_LENGTH,
            "Tweet is too long bro"
        );
        Tweet memory newTweet = Tweet({
            author: msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });

        tweets[msg.sender].push(newTweet);
    }

    function getTweet(address _owner, uint256 _i)
        public
        view
        returns (Tweet memory)
    {
        return tweets[_owner][_i];
    }

    function getAllTweets(address _owner) public view returns (Tweet[] memory) {
        return tweets[_owner];
    }
}
