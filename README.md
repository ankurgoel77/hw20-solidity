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

