# Capital Dividend Account (CDA)

**Who this is for**: owners of Canadian-controlled private corporation (CCPC) who hold investments in a corporate trading account (resident in Canada).  
**TLDR**: capital gains can be used for a tax efficient capital dividend.

This document only covers stocks and ETFs, other types of investments (real estate, etc.) are out of scope and might have different or additional rules.   
Tax information can change over time (e.g. the capital gains inclusion rate was going to increase to 2/3, before the proposal was cancelled), the below is my understanding as of 2026.  


# Details

The Capital Dividend Account is not part of the ledger, it can be tracked separately (e.g. in a spreadsheet).  
The CDA can be used to pay the tax-free portion of the cumulative net capital gain from the corporation to the shareholders with a capital dividend.  

Maintain a running total of capital gain or loss:
- Realized Gains/Losses: when you sell a security, calculate: Box 21 (Proceeds) - ACB (tracked separately)
- Distributions: for T3/T5 slips, add the entire capital gains amount (e.g., T3 Box 21) to your running total
- Positive and negative: capital gains are positive, and capital losses are negative

Calculate the balance of the Capital Dividend Account:
- When the running total is negative, the balance is zero until new gains exceed those past losses
- When the running total is positive, the balance is the non-taxable portion (currently 50%) of the net capital gain
- When you pay a capital dividend, subtract it from the CDA

Capital Dividend Account election process:
- Verification: check the CDA balance via Schedule 89 or My Business Account (allow for assessed year-end lag)
- Resolution: directors must pass a resolution to pay a dividend and elect for it to be a Capital Dividend under s.83(2)
- Filing: submit Form T2054 ("Election for a Capital Dividend Under Subsection 83(2)") along with a certified copy of the resolution on or before the payment date
  - Certification means the Secretary or a Director signs a statement on the resolution saying: "I hereby certify this to be a true copy of the resolution passed by the board..." 
- Reporting: enter the dividend on T2 Schedule 3 (issuing T5 slip is not required for a 100% capital dividend)

Submitting Schedule 89:
- CRA My Business account currently doesn't support it in Web Forms
- Schedule 89 can be submitted using physical mail or specialized software (e.g. TaxCycle)
- **To be confirmed**: it might be possible to uploaded as a PDF via the "Submit Documents" feature in My Business Account (under the "Capital Dividend Account" topic)

Note that CDA is a "point-in-time" calculation, if you sell an investment at a loss after your calculation but before the dividend is technically payable, you could inadvertently overdraw the account and incur a penalty.  
You may elect to pay less than the calculated CDA balance, e.g. by leaving a $1000 buffer.

Since this is a tax-free amount for Canadian residents, the shareholder recipients do not report this income on their T1 or anywhere else.  
If a shareholder is a non-resident, the capital dividend is subject to a Part XIII withholding tax (usually 25%, potentially reduced by a treaty), so it isn't "tax-free" for them.  


# Related

- [Adjusted Cost Base](Adjusted-Cost-Base.md)
- [T3](T3.md)
- [T5008](T5008.md)


# TODO:

- Step-by-step instructions for submitting Schedule 89 and Form T2054 with screenshots
- Include template for resolution to declare capital dividend  
- Include spreadsheet to be used as template for CDA calculation  
