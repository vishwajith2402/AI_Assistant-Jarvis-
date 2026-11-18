"""Launcher for Pheonix.
Run the futuristic Pheonix HUD interface:
    python assistant.py
Run the terminal-only assistant:
    python assistant.py --cli
"""

import argparse

from src.config import APP_NAME
from src.app import main as cli_main
from src.gui import main as gui_main


def main():
    parser = argparse.ArgumentParser(description=f"{APP_NAME} local AI assistant")
    parser.add_argument(
        "--cli",
        action="store_true",
        help="run the terminal-only assistant instead of the HUD interface",
    )
    args = parser.parse_args()

    if args.cli:
        cli_main()
    else:
        gui_main()


if __name__ == "__main__":
    main()
