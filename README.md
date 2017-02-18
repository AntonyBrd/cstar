# CSTAR
Cyber Security Tracking, Analysis &amp; Reporting

## Documentation

### Log Parsing

### Log Analysis

### Dashboard

## Project architecture



cstar/
├── detectr/          <-- WEB SITE DIRECTORY
│   ├── admin/                   <- web site administration
│   ├── cstar/                   <- web site global conf & code
│   ├── detectr/                 <- web app configurations & code
│   ├── processing_anomalies/    <- python back end module
│   ├── static/                  <- website static files
│   ├── db.sqlite3
│   ├── Dockerfile               <- Web site application image
│   ├── requirements.txt
│   └── manage.py                <- main python script for django app
├── postgres/         <-- DATABASE DIRECTORY
│   ├── scripts/
│   ├── data2.sql
│   └── data3.inf
├── tips
│   └── devtips.txt
├── .gitignore
└── README.md.txt

