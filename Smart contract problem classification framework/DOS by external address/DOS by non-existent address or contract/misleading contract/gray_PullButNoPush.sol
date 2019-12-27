pragma solidity 0.5.0;

//based on SWC

contract Gray_refunder {
    
    address[] private refundAddresses;
    mapping (address => uint) public refunds;

    constructor() public{
        refundAddresses.push(0x79B483371E87d664cd39491b5F06250165e4b184);
        refundAddresses.push(0xfB6916095ca1df60bB79Ce92cE3Ea74c37c5d359);
    }
    
    //good 
    //Let the user pick it up instead of us delivering it
    function refundOne() public{
        for(uint256 x = 0; x < refundAddresses.length; x++){
            if(msg.sender == refundAddresses[x]){
                msg.sender.transfer(refunds[msg.sender]);
            }
        }
    }

}