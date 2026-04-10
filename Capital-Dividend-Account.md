# Capital Dividend Account (CDA)

**Who this is for**: owners of Canadian-controlled private corporation (CCPC) who hold investments in a corporate trading account (resident in Canada).  
**TLDR**: capital gains can be used for a tax efficient capital dividend.

This document only covers stocks and ETFs, other types of investments (real estate, etc.) are out of scope and might have different or additional rules.   
Tax information can change over time (e.g. the capital gains inclusion rate was going to increase to 2/3, before the proposal was cancelled), the below is my understanding as of 2026.  


# Details

The Capital Dividend Account is not part of the ledger, it can be tracked separately (e.g. in a spreadsheet).  
The CDA can be used to pay the tax-free portion of the cumulative net capital gain from the corporation to the shareholders with a capital dividend.  
Note: the CDA can also include other amounts such as the tax-free portion of life-insurance proceeds received by the corporation (s.89(1)(d) ITA), but that is outside the scope of this document.  

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
- Reporting: enter the dividend on T2 Schedule 3 (a T5 slip with the capital dividend in Box 23 should also be issued to each shareholder, though some practitioners omit it for a sole-shareholder CCPC paying a 100% capital dividend)

Note that CDA is a "point-in-time" calculation, if you sell an investment at a loss after your calculation but before the dividend is technically payable, you could inadvertently overdraw the account and incur a penalty.  
You may elect to pay less than the calculated CDA balance, e.g. by leaving a $1000 buffer.

Since this is a tax-free amount for Canadian residents, the shareholder recipients do not report this income on their T1 or anywhere else.  
If a shareholder is a non-resident, the capital dividend is subject to a Part XIII withholding tax (usually 25%, potentially reduced by a treaty), so it isn't "tax-free" for them.  


# Submitting Schedule 89 and Form T2054

CRA allows Schedule 89 and Form T2054 to be submitted by:
- CRA My Business Account using "Submit documents"
- Specialized software (e.g. TaxCycle)
- Physical mail

To do it with CRA My Business Account:
- Log in to CRA My Account and select My Business Account (you will need to set up your login first)
- On the left navigation panel, go to "Submit documents" (under "Correspondence")
- On the "Submitted documents" screen, click "Submit documents"
- On the "Submit documents" screen:
  - Click "Start"
  - Select "Topic" = "Special Elections and Returns (SERs)"
  - Select "Indicate the reason for your submission" as one of:
    - "T2054 Election for a Capital Dividend Under Subsection 83(2)"
    - "Schedule 089 Request for Capital Dividend Account Balance Verification"

![Screenshot of submitting CRA documents in CRA My Business Account](media/CRA-My-Business-Account_Submit-documents_Capital-Dividend.png)


# Related

- [Adjusted Cost Base](Adjusted-Cost-Base.md)
- [T3](T3.md)
- [T5008](T5008.md)


# Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.83(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/page-52.html#h-291793) — capital dividend election: corporation elects that dividend be treated as a capital dividend; must file on or before the dividend payment date
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/page-55.html#h-291885) — definition of "capital dividend account" (includes non-taxable portion of capital gains, life-insurance proceeds, and capital dividends received from other corporations)
  - [s.184](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/page-126.html#h-296321) — Part III tax: penalty for electing a capital dividend in excess of the CDA balance
  - [s.212(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/page-143.html#h-297263) — Part XIII withholding tax on dividends paid to non-residents (including capital dividends)
- CRA Form T2054 — Election for a Capital Dividend Under Subsection 83(2): https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2054.html
- CRA T2 Schedule 89 — Request for Capital Dividend Account Balance Verification: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch89.html


# TODO:

- Include template for resolution to declare capital dividend  
- Include spreadsheet to be used as template for CDA calculation  
