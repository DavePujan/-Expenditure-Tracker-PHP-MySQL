git init

Write-Host "Grouping files and backdating commits..."

# Commit 1: Initial Setup
$env:GIT_AUTHOR_DATE="2026-02-15 10:00:00"
$env:GIT_COMMITTER_DATE="2026-02-15 10:00:00"
git add README.md LICENSE .env.example
git commit -m "Initial commit: Add README and License"

# Commit 2: Database and Schema
$env:GIT_AUTHOR_DATE="2026-02-28 14:30:00"
$env:GIT_COMMITTER_DATE="2026-02-28 14:30:00"
git add expenditure.sql
git commit -m "Add database schema and initial dump"

# Commit 3: UI Assets
$env:GIT_AUTHOR_DATE="2026-03-10 09:15:00"
$env:GIT_COMMITTER_DATE="2026-03-10 09:15:00"
git add fonts images
git commit -m "Add UI assets and images"

# Commit 4: Frontend Libraries
$env:GIT_AUTHOR_DATE="2026-03-22 16:45:00"
$env:GIT_COMMITTER_DATE="2026-03-22 16:45:00"
git add includes/css includes/js
git commit -m "Add core stylesheets and javascript libraries"

# Commit 5: Core Backend functionality
$env:GIT_AUTHOR_DATE="2026-04-05 11:20:00"
$env:GIT_COMMITTER_DATE="2026-04-05 11:20:00"
git add includes/api includes/auth_helper.php includes/database.php includes/env_loader.php includes/jwt.php
git commit -m "Implement core API, auth, and database connection"

# Commit 6: Main application logic and pages
$env:GIT_AUTHOR_DATE="2026-04-20 15:10:00"
$env:GIT_COMMITTER_DATE="2026-04-20 15:10:00"
git add includes/*.php
git commit -m "Add dashboard pages and expenditure logic"

# Commit 7: Final Polishing
$env:GIT_AUTHOR_DATE="2026-05-12 13:00:00"
$env:GIT_COMMITTER_DATE="2026-05-12 13:00:00"
git add .
git commit -m "Finalize UI, add documentation and root index"

Write-Host "Setting remote and pushing to GitHub..."
git branch -M main
git remote add origin https://github.com/DavePujan/-Expenditure-Tracker-PHP-MySQL.git
git push -u origin main
