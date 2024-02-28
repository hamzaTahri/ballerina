# Pick A Gift API

## Introduction
The Pick A Gift API is a simple HTTP service that allows users to retrieve albums by providing the name of an artist. It utilizes the iTunes Search API to fetch album information based on the artist's name.

## Functionality
The API provides a single endpoint `/pickagift` which listens on port `8080` by default. It accepts HTTP GET requests to retrieve albums of a specific artist.

### Endpoints
- **GET /pickagift/albums?artist={artist_name}**
  - Retrieves albums of the specified artist.

## Data Structures
### ITunesSearchItem
Represents an item retrieved from the iTunes search result.
- `collectionName`: Name of the album collection.
- `collectionViewUrl`: URL to view the album collection.

### Album
Represents information about an album.
- `name`: Name of the album.
- `url`: URL to view the album.

### ITunesSearchResult
Represents the result of an iTunes search operation.
- `results`: Array of ITunesSearchItem objects.

## Code Structure
- The code is written in Ballerina, a programming language designed for integration and orchestration tasks.
- It defines several types for organizing data retrieved from the iTunes API and representing albums.
- The service listens on port `8080` for incoming HTTP requests.
- It provides a resource function `getAlbums(string artist)` which queries the iTunes API to fetch albums of a specific artist.
- The `searchUrl(string s)` function generates the search URL for the iTunes API based on the provided artist name.

## Usage
To use the API, send an HTTP GET request to the `/pickagift/albums` endpoint with the query parameter `artist` set to the name of the desired artist. The API will return a JSON response containing information about the albums of that artist.

Example:
GET /pickagift/albums?artist=Michael+Jackson


## Dependencies
- Ballerina HTTP Library: The code utilizes Ballerina's built-in HTTP library for handling HTTP requests and responses.

## Setup
- Ensure Ballerina is installed in your environment.
- Copy the code into a Ballerina project or file.
- Run the Ballerina program to start the HTTP server.

## Notes
- This code is a simple demonstration and may require additional error handling and security considerations for production use.
- Ensure compliance with the iTunes API usage policy and terms of service when using the API in a production environment.
