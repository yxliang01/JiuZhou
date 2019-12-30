## No checked return value
In *Ethereum*, instructions such as **send, call or delegatecall** are provided to interact with external addresses. When an exception occurs in the interaction, these instructions do not throw an exception, but return **false**. When using these instructions, you need to check the return value of each instruction and handle exceptions correctly.
Bug type: statement bug