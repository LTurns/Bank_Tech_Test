### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### Plan:

# User Stories:

```
As a client
So that I can increase my balance,
I would like to deposit funds to my account, on any given date.
```

```
As a client
So I can decrease my balance,
I would like to withdraw funds from my account, on any given date.
```

```
As a client
So I can view my current balance and transactional history,
I would like to print my bank statement in the form of "date || credit || debit || balance"
```

# Brief overview of the bank statement table:

*date formation of DD/MM/YYYY*
*credit == deposit*
*debit == withdrawal*
*balance == total funds*
*separated by || (or operator)*


# Basic Input and Output
