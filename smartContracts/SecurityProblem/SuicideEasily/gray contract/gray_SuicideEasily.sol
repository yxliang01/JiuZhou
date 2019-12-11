pragma solidity 0.5.0;

contract gray_SuicideEasyly{
    address public owner;
    
    constructor() public payable{
        owner = msg.sender;
        require(msg.value > 0);
    }
    
    modifier OnlyOwner{
        require(msg.sender == owner);
        _;
    }
    
    function withdraw() external OnlyOwner{
        msg.sender.transfer(address(this).balance);
    }
    
    function suicide(address payable _Beneficiary) external OnlyOwner{
        selfdestruct(_Beneficiary);
    }
}