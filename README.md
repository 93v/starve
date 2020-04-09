# Starve

![CircleCI](https://img.shields.io/circleci/build/github/93v/starve.svg)
![David](https://img.shields.io/david/93v/starve.svg)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/93v/starve.svg)
![GitHub repo size](https://img.shields.io/github/repo-size/93v/starve.svg)
![npm](https://img.shields.io/npm/dw/starve.svg)
![npm](https://img.shields.io/npm/dm/starve.svg)
![npm](https://img.shields.io/npm/dy/starve.svg)
![npm](https://img.shields.io/npm/dt/starve.svg)
![NPM](https://img.shields.io/npm/l/starve.svg)
![npm](https://img.shields.io/npm/v/starve.svg)
![GitHub last commit](https://img.shields.io/github/last-commit/93v/starve.svg)
![npm collaborators](https://img.shields.io/npm/collaborators/starve.svg)

VERY AGGRESSIVELY Clean and remove unnecessary files and folders from `node_modules`

## Why

![Heaviest Objects In The Universe](https://i.redd.it/tfugj4n3l6ez.png)

The industry is moving towards serverless architecure, where the size of your
package is very important for performance. This tool makes your lambda
functions' packages significantly smaller.

## What

`starve` is a very simple tool to remove unnecessary files and folders
from `node_modules`, such as markdown, typescript source files, licenses etc.

## Using

```bash
npx starve
```

## How we decide what files to remove

We are running this command periodically to see unique file extension in
`node_modules`, try removing **unnecessary** files and test each attempt.

```bash
find node_modules -type f | perl -ne 'print $1 if m/\.([^.\/]+)$/' | sort -u
```
