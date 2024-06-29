//SPDX-License-Identifier:MIT
pragma solidity 0.8.26;


contract ErrorHandling {

    bool public result; 

    function checkRequire(uint256 num) public pure returns (string memory) {
        require(num >= 0, "error occur"); // num is always >= 0 since it's uint256
        require(num <= 255, "error occur");
        return "within range";
    }

    function  checkassert(uint256 num1,uint256 num2)public{
        uint256 sum = num1+num2;
        assert(sum <= 255);
        result = true;
    }

    function getresult() public view returns(string memory){
        if(result == true){
            return "No overflow";
        }
        else{
            return "overflow occur";
        }
    }

    function checkrevert(uint256 num1, uint256 num2) public pure returns(string memory, uint256){
        uint256 sum = num1 + num2;
        if(sum < 0 || sum > 255){
            revert ("overflow occur");
        }else{
           return ("No overflow",sum); 
        }
    }

    
    
}
