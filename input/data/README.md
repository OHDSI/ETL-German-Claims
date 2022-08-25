# This folder contains all the input data. Please place all the relevant files here before executing the ETL job.

- ENTGELTE.csv
- FAB.csv
- FALL.csv
- ICD.csv
- OPS.csv

# If you only have your P21 data in folders yearwise, you can execute the enclosed script (adjust_years.sh) to achive the needed structure. Please place all the years in the folder P21. The structure should look like this:

```
P21/
├── 20xx/
│   ├── FALL.csv
│   ├── FAB.csv
│   ├── Entgelte.csv
│   ├── ICD.csv
│   └── OPS.csv
├── 2017/
│   ├── FALL.csv
│   ├── FAB.csv
│   ├── Entgelte.csv
│   ├── ICD.csv
│   └── OPS.csv
├── 2018/
│   ├── FALL.csv
│   ├── FAB.csv
│   ├── Entgelte.csv
│   ├── ICD.csv
│   └── OPS.csv
└── 20xx/
    ├── FALL.csv
    ├── FAB.csv
    ├── Entgelte.csv
    ├── ICD.csv
    └── OPS.csv
---
```

