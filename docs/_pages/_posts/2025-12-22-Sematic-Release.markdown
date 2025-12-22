---
layout: single
title:  "Semantic Release"
date:   2025-12-22
tags: ["semantic-release", "DevOps", "release"]
toc: true
toc_label: "Table of Contents"
---
# Introduction

I am working on terraform modules and we want that modules to be released in GitHub tag.
For that we explore multiple tools at our end and also keeping the bigger approach we also want to create release process for not only terraform specific but to cover other things as well.

We identify the solution called [semantic-release](https://semantic-release.gitbook.io/semantic-release/).

# Approach

1. Install node over machine where whole process will run.
2. Create .releaserc file that contain the actual configuration require to perform action, this need to be placed in module or root of directory which we call one unit for release.
   ```json
   {
     "branches": ["main"],
     "plugins": [
	     "@semantic-release/commit-analyzer",
	     "@semantic-release/release-notes-generator",
	     [
		     "@semantic-release/changelog",
		     {
			     "changelogFile": "CHANGELOG.md"
			}
		],
		"@semantic-release/github",
		[
			"@semantic-release/git",
			{
				"assets": ["CHANGELOG.md"]
			}
		],
	],
	"tagFormat": "portfolio-v${version}"
	}
   ```
   Lets explore file, it is json file containing key value pair.
   branches --> It specify tool to be executed in that branch only.
   plugins    --> which plugins will be used.
3. After this we want package.json in same directory to that contain some metadata like
   ```json
	   {
		   "name": "module1",
		   "description": "Contains code for module one."
		}
	```
4. Now we are ready for execution you just want to run below command that will dry run for you in local, it GH_TOKEN (github token with appropiate permission) to check connection with repository.  
	```bash
	   npx \
		   --package semantic-release \
		   --package @semantic-release/git \
		   --package @semantic-release/changelog \
		   semantic-release
	```

# Automation
Now coming to the automation part, we can make this step in any CICD tool, either GitHub action, Jenkins or any thing that will do stuff for us. 

# Scope
Once you are comfortable with this approach, you can explore other plugins.