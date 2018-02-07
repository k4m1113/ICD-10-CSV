# 2018 ICD-10 CSV
## A comma-separated file of 2018 ICD-10 codes and categories.

The CSV is ready for use at [codes.csv](./codes.csv).

[Codes .txt file]('./codes.txt') downloaded from [Centers for Medicare and Medicaid Services](https://www.cms.gov/Medicare/Coding/ICD10/2018-ICD-10-CM-and-GEMs.html)

example of full DX code structure with category and description:
```
Category Code,Diagnosis Code,Full Code,Abbreviated Description,Full Description,Category Title
A0,1234,A01234,"Comma-ind anal ret","Comma-induced anal retention","Malignant neoplasm of anus and anal canal"
```

example of just the category codes and corresponding titles located at [categories.csv]('./categories.csv'):
```
Category Code,Category Title
C21,"Malignant neoplasm of anus and anal canal"
```


I've also included a simple ruby script to generate your own CSV if you want different formatting. Upon downloading this repo and navigating to its directory, enter IRB and run:
```
require './csv_generator'
CSVGenerator.new.generateCSV
```

Created by Kamille Delgardo for the  [Center for Marfan Syndrome and Related Aortic Disorders](https://stanfordhealthcare.org/medical-clinics/center-marfan-syndrome-related-aortic-disorders.html) at the Stanford University School of Medicine.

ICD-10 codes © [The World Health Organization](https://www.cdc.gov/nchs/icd/icd10cm.htm).
Script © 2018 [Stanford University](https://doresearch.stanford.edu/policies/research-policy-handbook/intellectual-property/copyright-policy).
