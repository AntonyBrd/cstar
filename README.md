# CSTAR
Cyber Security Tracking, Analysis &amp; Reporting

## Documentation

### Log Parsing

### Log Analysis

### Dashboard

## Project architecture



cstar/ <br>
├── detectr/          <-- WEB SITE DIRECTORY <br>
│   ├── admin/                   <- web site administration<br>
│   ├── cstar/                   <- web site global conf & code<br>
│   ├── detectr/                 <- web app configurations & code<br>
│   ├── processing_anomalies/    <- python back end module<br>
│   ├── static/                  <- website static files<br>
│   ├── db.sqlite3<br>
│   ├── Dockerfile               <- Web site application image<br>
│   ├── requirements.txt<br>
│   └── manage.py                <- main python script for django app<br>
├── postgres/         <-- DATABASE DIRECTORY<br>
│   ├── scripts/<br>
│   ├── data2.sql<br>
│   └── data3.inf<br>
├── tips<br>
│   └── devtips.txt<br>
├── .gitignore<br>
└── README.md.txt<br>

