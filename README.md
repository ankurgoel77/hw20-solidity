# hw20-solidity
## Level 1 - AssociateProfitSplitter
see file [AssociateProfitSplitter](AssociateProfitSplitter.sol)

For this contract, I used the following addresses from the mnemonic _bone bid share airport beach join disease accuse cable plunge play express eye stairs shaft_ in BIP39:
* employee_one : 0x47D559158B0BbE5B4A7199c673C9F2Fb481672cA  
* employee_two : 0x3F81c0Bdbe86709C13E786883fCb201ADa92D635  
* employee_three : 0xA554f9d8b345179D49ad7B200614E19398f0E5eB  

Please note that I added a getter function _get_employee_balances_ so I could view the address balances from the contract as I tested.  Note that this contract was created with address 0xDd22315EE4fA948121eA74f1271333C8568ee123
 on my ganache network.

You can see the results as I deposited 101 and 100 wei into the accounts from this screenshot below.  Note that _balance_ remains 0, so the remainder is being properly sent back to the sender.

![remix level 1](screenshots/level-1-remix.png)

## Level 2 - TieredProfitSplitter
see file [TieredProfitSplitter](TieredProfitSplitter.sol)

For this contract, I used the following addresses from the mnemonic _bone bid share airport beach join disease accuse cable plunge play express eye stairs shaft_ in BIP39:
* employee_one : 0xA64ee00BA1f50e3d1c6AC77A64aaC7DdaA246124  
* employee_two : 0x529a0EaE628DB0A538bdDC9C81327D5c5a145Cd7  
* employee_three : 0xB97eF589013aa103b8d7f4d1faa4c1E0AcDB7690  

Please note that I added a getter function _get_employee_balances_ so I could view the address balances from the contract as I tested.  Note that this contract was created with address 0xf7874262Afa2E1709b87e7b99449BaB39a10F225
 on my ganache network.

You can see the results as I deposited several different wwi into the accounts from this screenshot below.  Note that _balance_ remains 0, so the remainder is being properly sent to employee_one.  

![remix level 2](screenshots/level-2-remix.png)

## Level 3 - DeferredEquityPlan
see file [DeferredEquityPlan](DeferredEquityPlan.sol)
see file [DeferredEquityPlan_fakenow](DeferredEquityPlan_fakenow.sol)

For this contract, I used my standard MetaMask address for my local Ganache account and deployed the fakenow version:
* address : 0x325884399c77F899d336Dd0789090B8a487b1eab

This contract with fakenow has address 0xeB1B61d81402181Ef37dec2187Cda54841720934 on my ganache network. You can see the results after I pressed *fastforward* one time and was able to distribute shares to my address:

![remix level 3](screenshots/level-3-remix.png)

## Deploy to Ropsten Level 1

I deployed the AssociateProfitSplitter.sol contract to Ropsten. The transaction ID was 0x09f671b0861db7097df4024e0585012b124fa735c53973072932601cbe049603. 

![metamask level 1](screenshots/level-1-ropsten.png)

Using etherscan, this contract has address 0x560F2F41Cf934AAe73fa0e5C4e304be8e14aA645. 

![etherscan level 1](screenshots/level-1-etherscan.png)

It interacted the same as before in Remix to deposit 2000 Wei and round to the nearest thirds (contract address is same as above):

![remix level 1](screenshots/level-1-ropsten-interact.png)

## Deploy to Ropsten Level 2

I deployed the TieredProfitSplitter.sol contract to Ropsten. The transaction ID was 0x4199390ce4d38942eaf925c0ab76688f8f0847dd9ea8e79ebe25a359dc6301df. 

![metamask level 2](screenshots/level-2-ropsten.png)

Using etherscan, this contract has address 0x64af3b58698bb1d102a59a35deb9c354116b1ca4. 

![etherscan level 2](screenshots/level-2-etherscan.png)

It interacted the same as before in Remix to deposit 4202 Wei and round to nearest tiers with the remainder going to employee 1 (contract address is same as above):

![remix level 2](screenshots/level-2-ropsten-interact.png)

## Deploy to Ropsten Level 3

I deployed the DeferredEquityPlan.sol contract to Ropsten. The transaction ID was 0x352c182b66330c93bf9b4f1aa1c26ebd1e2043ae8b2154a0733af1a07ed571a4. 

![metamask level 3](screenshots/level-3-ropsten.png)

Using etherscan, this contract has address 0xff9d46897bad88851658e21f1ea9798835990c5e. 

![etherscan level 3](screenshots/level-3-etherscan.png)

Unfortunately, since this contract requires distribution after 365 days for the first 250 shares, we will have to wait a year until we can test out the contract to make sure it works.