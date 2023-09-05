# NestedStructs
# ExemScenario Smart Contract

This is a Solidity smart contract that represents a scenario for managing personal and educational information of individuals using blockchain technology. The contract includes structs, enums, and functions to interact with the data.

## Contract Overview

### Structs

#### 1. personScene
- Represents a person's information including their name, age, relationship status, and social media platform.

#### 2. relationship
- Represents relationship details, including the name of the current boyfriend, ex-boyfriend, number of relationships, admirer's name, number of sides, and educational status. It also includes a mapping to store educational status based on an address.

#### 3. eduStatus
- Represents educational status, including the name of the school, level, matriculation number, and class name.

### Enum

- SocialMediaPlatform: Represents various social media platforms like Facebook, Instagram, LinkedIn, and Twitter.

## Functions

#### 1. `getfromTopToSet`
- Allows you to set educational status for a given address.

#### 2. `returnfromTopToSet`
- Allows you to retrieve educational status for a given address.

## Usage

1. Deploy the contract on a supported blockchain network with Solidity version ^0.8.7.
2. Use the `getfromTopToSet` function to set educational status for an address.
3. Use the `returnfromTopToSet` function to retrieve educational status for an address.
