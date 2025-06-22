#!/bin/bash

# Project name
PROJECT_NAME="Chapoba"

# --- Step 1: Create folder structure ---
mkdir -p $PROJECT_NAME/{frontend,backend,docker,docs}

cd $PROJECT_NAME || exit

# Create README.md
cat <<EOF > README.md
# Chapoba Project

This is the main monorepo for the Chapoba application.

## Structure

- \`frontend/\`: Vite + JS/TS frontend
- \`backend/\`: Symfony API
- \`docker/\`: Docker-related configuration
- \`docs/\`: Documentation

## Getting Started

1. Clone the repository
2. Navigate into \`frontend/\` or \`backend/\` to begin development
EOF

# Create .gitignore
cat <<EOF > .gitignore
# Node
/frontend/node_modules/
/frontend/dist/

# Symfony
/backend/var/
/backend/vendor/
/backend/.env.local

# Environment & Editor settings
.env
.vscode/
.idea/
.DS_Store
EOF

echo "✅ Project structure created for '$PROJECT_NAME'"

# --- Step 2: Initialize Git ---
git init
git add .
git commit -m "Initial monorepo structure for Chapoba project"

# --- Step 3: Create GitHub repository using GitHub CLI ---
gh repo create $PROJECT_NAME --public --source=. --remote=origin --push

echo "🚀 GitHub repository created and initial commit pushed"
