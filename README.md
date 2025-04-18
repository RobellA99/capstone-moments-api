# Moments - API

A web app that allows you to build a personalised custom route when exploring a city, allowing everyone's journey to be a unique discovery.

## Run Locally

Clone the project

```bash
  git clone https://github.com/RobellA99/capstone-moments-api.git
```

Go to the project directory

```bash
  cd capstone-moments-api
```

Install dependencies

```bash
  npm install
```

Start the server

```bash
  npm run dev
```

## API Reference

#### Get all monuments

```http
  GET /
```

#### Add a monument

```http
  POST /
```

#### Get all category

```http
  GET /category
```

#### Get images by category

```http
  GET /category/images
```

#### Get monuments by category

```http
  GET /category/monuments
```

## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`PORT`
`FRONTEND_URL`
`DB_HOST`
`DB_USER`
`DB_PASSWORD`
`DB_DATABASE`
