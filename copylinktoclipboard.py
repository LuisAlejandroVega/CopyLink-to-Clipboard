import sys
import pyperclip
from win11toast import toast

if len(sys.argv) < 2:
    sys.exit(0)

url = sys.argv[1]
pyperclip.copy(url)

toast("Link Copied!", f"URL: {url}")
