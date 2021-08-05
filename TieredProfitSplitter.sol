pragma solidity ^0.5.0;

// lvl 2: tiered split
contract TieredProfitSplitter {
    address payable employee_one; // ceo
    address payable employee_two; // cto
    address payable employee_three; // bob

    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }

    // Should always return 0! Use this to test your `deposit` function's logic
    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        uint points = msg.value / 100; // Calculates rudimentary percentage by dividing msg.value into 100 units
        uint total = 0;
        uint amount = 0;

        // @TODO: Calculate and transfer the distribution percentage
        // Step 1: Set amount to equal `points` * the number of percentage points for this employee
        // Step 2: Add the `amount` to `total` to keep a running total
        // Step 3: Transfer the `amount` to the employee
        amount = points * 60;
        employee_one.transfer(amount);
        total += amount;

        // @TODO: Repeat the previous steps for `employee_two` and `employee_three`
        // Your code here!
        
        amount = points * 25;
        employee_two.transfer(amount);
        total += amount;
        
        amount = points * 15;
        employee_three.transfer(amount);
        total += amount;

        employee_one.transfer(msg.value - total); // ceo gets the remaining wei
    }

    function() external payable {
        deposit();
    }
        
    function get_employee_balances() public view returns (uint, uint, uint) {
        return (employee_one.balance, employee_two.balance, employee_three.balance);
    }
}