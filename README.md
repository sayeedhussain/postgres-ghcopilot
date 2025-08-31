_Generated with Google AI assistance_

## About

This repo demonstrates how to talk to a postgres database using natural language in VSCode

## Pre-Requisites

- A GitHub account with an active Copilot subscription
- A running PostgreSQL database on Local / Remote (reachable from your computer)
- Visual Studio Code

## Step 1: Install the necessary extensions

- In Visual Studio Code, go to the Extensions view by clicking the Extensions icon in the Activity Bar or pressing Ctrl+Shift+X.
- Search for GitHub Copilot and GitHub Copilot Chat and click Install for both.
- Search for PostgreSQL and click Install on the extension published by Microsoft. 

## Step 2: Start postgres server locally

- Start the postgres db using docker-compose
```sh
docker-compose up -d
```
- Check orders table is created properly
```sh
docker exec -it pg-orders psql -U admin -d shop -c "SELECT count(*) FROM orders;"
```

## Step 3: Connect to your PostgreSQL database

- Open the PostgreSQL extension in the VS Code Activity Bar.
- Select the + icon in the Connections view to create a new connection profile.
- Enter your database connection details (host, user, password, database) to connect to your PostgreSQL instance. 

## Step 4: Start a Copilot chat session with your database

- Ensure you are logged-in on github copilot in VSCode
- In the Connections view, right-click on your connected PostgreSQL database.
- Select Chat with this database from the context menu.
- If prompted, grant permission for the extension to access the database connection context for Copilot.

## Step 5: Query with natural language

A Copilot chat interface will open, pre-filled with the @pgsql chat participant. This agent gives Copilot the schema context it needs to generate accurate queries. 

Example prompts:
- To retrieve data: "Show the 10 highest value orders".

## Step 6: Review and execute the generated SQL

Always review the generated code before execution, especially when making modifications.