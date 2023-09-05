/*
 Create a smart contract that showcases various exemplary scenarios by utilizing nested structs and mappings 
 within a primary struct. Within the main struct, integrate a secondary struct, 
 and within this secondary struct, establish a mapping that links it to another struct. 
 Moreover, incorporate an enumeration declaration within the main struct. 
 Conclude by implementing a function that allows for the retrieval of information from the deepest nested struct."
*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
    contract exemScenario {
        struct personScene {
            string name;
            uint age;
           relationship EduStatus;
           SocialMediaPlatform social;

        }
       personScene _personScene;

           enum SocialMediaPlatform {
               Facebook,
               Instagram,
               LinkedIn,
               Twitter
           }
          // struct eduStatus;
          struct relationship{
                string currentBfName;
                string exBfName;
                uint noOfRships;
                string admirer;
                uint noOfSides;
                mapping(address => eduStatus) _relationship;
                eduStatus _eduStatus;
          }
          struct eduStatus {
                string nameOfSchool;
                uint level;
                uint matric; 
                string nameOfClass; 
            }
            
         
        function getfromTopToSet(address _addr, string memory _nameOfSchool, uint _level, uint _matric, string memory _nameOfClass) external {
            _personScene.EduStatus._relationship[_addr].nameOfSchool = _nameOfSchool;
             _personScene.EduStatus._relationship[_addr].level = _level;
              _personScene.EduStatus._relationship[_addr].matric = _matric;
              _personScene.EduStatus._relationship[_addr].nameOfClass = _nameOfClass; 
        }
        function returnfromTopToSet(address _addr) external view returns (string memory, uint, uint, string memory) {

            return (_personScene.EduStatus._relationship[_addr].nameOfSchool, 
             _personScene.EduStatus._relationship[_addr].level, 
              _personScene.EduStatus._relationship[_addr].matric,
               _personScene.EduStatus._relationship[_addr].nameOfClass);
       
        }

}
