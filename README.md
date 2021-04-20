# GQuestions CLI
Given a query, GQuestions automatically and iteratively scrape the list of queries in "people also ask".

![badge](https://img.shields.io/badge/license-GPLv3-brightgreen.svg)

[![asciicast](https://asciinema.org/a/4wrOzHnxQVcTImuofzdMxB35L.svg)](https://asciinema.org/a/4wrOzHnxQVcTImuofzdMxB35L)

## ⚠ Disclaimer
> This software is not authorized by Google and doesn't follow Google's
> robots.txt. Scraping without Google explicit written permission is a violation of thei
> terms and conditions on scraping and can potentially cause a lawsuit

## Installation
Currently the code requires a chrome browser on your machine. 
If you are familiar with the `selenium` library, you can change `gquestions.py` code to work with different browsers. The rest of the instructions assume that you are working with Chrome.  
#### Step 1: Download `ChromeDriver` and place it under `driver/`
Check the version of your chrome browser (in `setting` -> `About Chrome`), and download the matching version of driver from https://chromedriver.chromium.org/.

#### Step 2: Start with a fresh python 3.7 environment and install the required packages
```
pip -r requirements.txt
```

#### Step 3: Verify the installation with an example query
Search "flights" in English and export in csv (under `csv/`)
```
python gquestions.py query "flights" en --csv
```
## 🔍 Usage:
To make a single query: 
```
python gquestions.py query <keyword> (en|es) [depth <depth>] [--csv] [--headless]
```
To process a batch of queries -- Put the queries in a line separated file (see `perspectrum_claims.txt` for example), and run:
```
bash extract.sh <input-file>
```

To print help message --
```
python gquestions.py (-h | --help)
```
## How to read the csv results
The output csv file has four columns:
- id: 
- parent: The query you put in the search bar
- name: The first-level "people also ask" entries that appears for the query.
- inner.name: Additional "people also ask" items that popped up after clicking on the first-level entries. 


## Advanved Usage Examples:

Search headlessly "flights" in English and export in html
```
python gquestions.py query "flights" en --headless   

```

Search "vuelos" in Spanish and export in html and csv
```
python gquestions.py query "vuelos" es --csv
```

Search "vuelos" in Spanish with a depth of 1 and export in html
```
python gquestions.py query "vuelos" es depth 1 
```

Advanced use: using operators with queries:

```
python gquestions.py query '"vpn" site:https://protonmail.com/blog' en --csv
```

## License
All assets and code are under the GPL v3 License unless specified otherwise.

## 👀 Help:
Got stuck? Check help!
```
python gquestions.py -h
```

![Gquestions_graph](https://i.gyazo.com/5f9677d13ba9845e0f38972e4d8c6ed3.png)