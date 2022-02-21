#!/usr/bin/env bash

set -e

SLUG="jaredsburrows/flutter-gradle-app-template"

# Delete any existing temporary website clone
rm -rf temp-clone
rm -rf web-latest

# Generate website
cp -R build/web web-latest/

# Clone the current repo into temp folder
git config --global user.email "action@github.com"
git config --global user.name "Github Actions"
git clone --quiet https://${GH_TOKEN}@github.com/${SLUG} temp-clone &> /dev/null

# Move working directory into temp folder
cd temp-clone

# Checkout and track the gh-pages branch
git checkout -t origin/gh-pages

# Delete everything
rm -rf *

# Copy website files from real repo
cp -R ../web-latest/* .

# Stage all files in git and create a commit
git add .
git add -u
git commit -m "Website at $(date)"

# Push the new files up to GitHub
git push -fq origin gh-pages > /dev/null

# Delete our temp folder
rm -rf ../temp-clone

echo -e "Published website to gh-pages.\n"
