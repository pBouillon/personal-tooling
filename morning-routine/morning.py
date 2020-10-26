import time

import webbrowser


# Websites to be opened for the morning routing
MORNING_LIST = [
    # Self-organization
    'https://todoist.com/app/',

    # Global
    'https://github.com/',
    'https://dev.to/',
    'https://www.developpez.com/',
    'https://www.linkedin.com/',
    
    # Random
    'https://www.reddit.com/r/ProgrammerHumor/',
    'https://www.monkeyuser.com/',
    'https://www.commitstrip.com/fr/',
    'https://arcaderage.co/',
]


def open_site(url: str, delay: int = .1) -> None:
    """Open the provided url in a new tab

    Afterward, the program will halt for :paramref delay: seconds so that the
    browser can handle and proceed the request without opening a new window

    :param url: (str) url to be opened
    :param delay: (int) number of seconds to be awaited (default .1)
    """
    webbrowser.open_new_tab(url)
    print('[INFO] - opening ' + url)
    time.sleep(delay)


def main():
    [open_site(website, 1) if website == MORNING_LIST[1] else open_site(website) for website in MORNING_LIST]


if __name__ == "__main__":
    main()
