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
Search "flights" in English and export in html (under `html/`)
```
python gquestions.py query "flights" en
```
## 🔍 Usage:

```
python gquestions.py query <keyword> (en|es) [depth <depth>] [--csv] [--headless]
```

Print help message.

```
gquestions.py (-h | --help)
```

## 💡 Examples:

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