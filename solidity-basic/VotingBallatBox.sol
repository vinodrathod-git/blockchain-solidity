pragma solidity >=0.4.16 <0.6.0;
pragma experimental ABIEncoderV2;
///In experimental domain dynamic array cnnot be passed or rx
contract VotingBallatBox {
    
    uint[] public votes; // array of votes data type is unsigned int 256 access modifier is public
    string[] public options;// array of options data type is string  access modifier is public
    mapping(address=>bool) hasVoted; ///map used where key is address and val is bool
    uint mapLength;
    
    constructor(string[] memory _options) public {
        options = _options;
        votes.length = options.length;
        mapLength = 0;
    }
    
    function vote(uint option) public {
        require(0 <= option && option < options.length, "Invalid option selected"); /// validating options
        require(!hasVoted[msg.sender], "You have already voted, Thank you");///validating wether the user has already voted
        votes[option] = votes[option]+1; /// incrementing total nmber of votes
        hasVoted[msg.sender] = true;  /// registering the voter by adding it to the map, with boolean value true
        mapLength++;//incrementing value
    }
    
    ///list of options 'Candidate'
    function getOptions() public view returns (string[] memory){
        return options;
    }
    
    /// returns number of votes recived
    function getTotalCountOfVotes() public view returns (uint){
        return mapLength;
    }
}