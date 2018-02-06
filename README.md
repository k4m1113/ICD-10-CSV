# 2018 ICD-10 CSV
## A comma-separated file of 2018 ICD-10 codes.

The CSV is ready for use at [codes.csv](./codes.csv).

[Codes .txt file]('./codes.txt') downloaded from [Centers for Medicare and Medicaid Services](https://www.cms.gov/Medicare/Coding/ICD10/2018-ICD-10-CM-and-GEMs.html)

Formatting example with header:
```
Code,Description
XXX1234,"Comma-induced anal retention"
```

I've also included a simple ruby script to generate your own CSV if you want different formatting. Upon downloading this repo and navigating to its directory, enter IRB and run:
```
require './csv_generator'
CSVGenerator.new.generateCSV
```

Created by Kamille Delgardo for the  [Center for Marfan Syndrome and Related Aortic Disorders](https://stanfordhealthcare.org/medical-clinics/center-marfan-syndrome-related-aortic-disorders.html) at the Stanford University School of Medicine.

ICD-10 codes © [The World Health Organization](https://www.cdc.gov/nchs/icd/icd10cm.htm).
Script © 2018 [Stanford University](https://doresearch.stanford.edu/policies/research-policy-handbook/intellectual-property/copyright-policy).
