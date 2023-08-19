
# Cooler Update contest details

- Join [Sherlock Discord](https://discord.gg/MABEWyASkp)
- Submit findings using the issue page in your private contest repo (label issues as med or high)
- [Read for more details](https://docs.sherlock.xyz/audits/watsons)

# Q&A

### Q: On what chains are the smart contracts going to be deployed?
mainnet
___

### Q: Which ERC20 tokens do you expect will interact with the smart contracts? 
DAI, sDAI, and gOHM
___

### Q: Which ERC721 tokens do you expect will interact with the smart contracts? 
None
___

### Q: Which ERC777 tokens do you expect will interact with the smart contracts? 
None
___

### Q: Are there any FEE-ON-TRANSFER tokens interacting with the smart contracts?

No
___

### Q: Are there any REBASING tokens interacting with the smart contracts?

No
___

### Q: Are the admins of the protocols your contracts integrate with (if any) TRUSTED or RESTRICTED?
TRUSTED
___

### Q: Is the admin/owner of the protocol/contracts TRUSTED or RESTRICTED?
TRUSTED
___

### Q: Are there any additional protocol roles? If yes, please explain in detail:
- cooler_overseer (TRUSTED): has the ability to defund and reactivate the Clearinghouse.
- emergency_shutdown(TRUSTED): has the ability to shutdown the Clearinghouse.
___

### Q: Is the code/contract expected to comply with any EIPs? Are there specific assumptions around adhering to those EIPs that Watsons should be aware of?
No
___

### Q: Please list any known issues/acceptable risks that should not result in a valid finding.
None
___

### Q: Please provide links to previous audits (if any).
https://github.com/sherlock-audit/2023-01-cooler-judging
___

### Q: Are there any off-chain mechanisms or off-chain procedures for the protocol (keeper bots, input validation expectations, etc)?
yes, the clearinghouse incentivizes keepers to claim defaulted loans, so that that debt can be written off and the corresponding collateral burned.
___

### Q: In case of external protocol integrations, are the risks of external contracts pausing or executing an emergency withdrawal acceptable? If not, Watsons will submit issues related to these situations that can harm your protocol's functionality.
Risks related to Olympus shutting down its Treasury due to an emergency are acceptable.
___

### Q: Do you expect to use any of the following tokens with non-standard behaviour with the smart contracts?
DAI
___

### Q: Add links to relevant protocol resources
https://docs.olympusdao.finance/main/technical/overview/
https://github.com/OlympusDAO/olympus-v3
___



# Audit scope

