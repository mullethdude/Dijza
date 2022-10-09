// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


interface Icheck {
    function ownerOf(uint256 tokenId) external view returns (address); 
}

contract Dijza {
    mapping(address => uint256) public nodeLPP;
    uint256[] public mapza =new uint256[](8);
    uint256 public Pos;
    bool private initdone;
   
    function querymapindex(uint index) public view returns (uint) {
        uint out = mapza[index];
        return out;
    }

    function creatingWorld(address[] memory ads, uint256[] memory idlpp) public
    {
        for (uint256 j = 0; j < ads.length; j += 1) {
            nodeLPP[ads[j]] = idlpp[j];
        }
        initMap(ads);
    }

    function initMap(address[] memory ads) private {
        mapza;
        for (uint256 j = 0; j < ads.length; j += 1) {
            mapza[j] = nodeLPP[ads[j]];
        }
    }



    function startGame(address[] memory ads, uint256[] memory idlpp) public {
        Pos = 0;
        creatingWorld(ads, idlpp);
    }
    function move()public{
        Pos+=1;
    }


    function getLensFollowNFT(address oddess, uint256 tid) external view returns (address){
        return Icheck(oddess).ownerOf(tid);
    }

}
