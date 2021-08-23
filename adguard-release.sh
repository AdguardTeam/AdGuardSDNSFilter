#!/usr/bin/env bash

CURRENT_DATE=$(date +%d.%m.%Y)

git checkout master
git pull --no-commit origin master
hostlist-compiler -c configuration.json -o Filters/adguard-adaway-peter-lowe.txt
git add . 
ISSUE_NUMBER=$(gh issue create --title "Make $CURRENT_DATE Release"  --body "Make $CURRENT_DATE Release" --assignee @me --label release | sed 's|.*/||' )
git checkout -b "release/adguard-filters-$CURRENT_DATE"
git commit -m "[$CURRENT_DATE] Upload newly generated version of custom filters file for AdGuard Home #$ISSUE_NUMBER" 
git push -u origin HEAD
gh pr create --base master --fill --assignee @me --title "[$CURRENT_DATE] Release preparation for day $(date +%d/%m/%Y)" --body "Release of Adguard Custom Filters generated for AdGuard Home to close issue #$ISSUE_NUMBER"
gh pr merge --delete-branch --squash 
gh release create $CURRENT_DATE --title "Release $CURRENT_DATE" --notes "Release of Adguard Custom Filters generated for AdGuard Home on day $CURRENT_DATE"
gh issue close $ISSUE_NUMBER
git checkout master
git pull --no-commit origin master