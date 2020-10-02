# Qaari
    A not so social netwoking platform for people who like to read and share their book recommendation.

## Current production environment
	Site hosted at https://qaari-24.herokuapp.com

## Setup locally using virtual environment
1. Clone the repo (or fork if you plan to contribute).
	- To just test the site:
		  `git clone https://github.com/ssurbhi560/qaari`
	- To enable contributions and send PRs:
		`git clone <url-of-fork>`.
2. `cd` to the directory you wish to have your project in, and run `python3 -m venv Qaari`.
3. Activate it by `source Qaari/bin/activate`. You may use any other name than `Qaari`, but make sure to use the same name while activating the virtual environment.
4. Run `pip install --upgrade pip` to, as expected, upgrade pip, and then install the dependencies by:
> `pip3 install requirements.txt`
5. Now `cd` to the directory where you cloned `Qaari`, and (ensure venv is activated) set the environment variable by:
> `export FLASK_APP=qaari.py` 
> `export FLASK_DEBUG=1`
> `export FLASK_ENV=development`
6. The project can run only when the vitrual environment is activated. Or perhaps you have the dependencies globally installed.
7. Some of the links might be broken since it's still under development.
So, manually change the URL to whatever route you like.
Refer to `qaari.py` for all routes, and manually change the URLs to navigate.

# Useful links
  - [venv](https://docs.python.org/3/library/venv.html#module-venv)
