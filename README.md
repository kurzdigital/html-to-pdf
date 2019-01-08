# HTML TO PDF Converter Microservice

This microservice will convert HTML to PDF. The conversion will be done with [wkhtmltopdf](https://wkhtmltopdf.org/)

## Prerequisites

1. docker

## Getting Started

    $ make

## Example Request

   $ curl -X POST \
        http://localhost \
        -H 'Content-Type: application/json' \
    	-d '{"content":"<h1>Test</h1><p>Hello world</p>","options":{ "pageSize": "letter" }}'

- content is the HTML which should be converted
- options are optional parameters