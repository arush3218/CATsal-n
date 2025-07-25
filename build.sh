#!/bin/bash
# Exit on error
set -e

# Modify this line as needed for your package manager (pip, poetry, etc.)
pip install -r requirements.txt

# Convert static asset files
python catsaloon/manage.py collectstatic --no-input

# Apply any outstanding database migrations
python catsaloon/manage.py migrate
