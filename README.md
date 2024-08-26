# Contacts App

A Flutter-based contacts application with minimal functionality for listing, viewing, updating,
adding, and deleting contacts.
This project utilizes the BLoC state management pattern, ObjectBox for local storage, Logger for
logging, and Go Router for navigation.

## Features

- List all contacts
- View contact details
- Add a new contact
- Update an existing contact
- Delete a contact

## Architecture

- **BLoC:** Handles all the business logic of the app and provides data to the UI.
- **UI:** The user interface layer that consumes data from BLoC and displays it to the user. It
  reacts to changes in the data emitted by the BLoC.
- **Repository:** Acts as a single source of truth for fetching and storing data. It provides data
  to BLoC classes, either from the initial JSON asset or from the ObjectBox database.
- **Datasource:** Responsible for fetching data, either from a JSON file (for initial loading) or
  from the ObjectBox database.
- **Config:** Contains configuration for dependency injection and routes setup using Go Router.
- **Shared:** Contains utility classes that are used throughout the project, including logging (
  using Logger) and data manipulation helpers.
