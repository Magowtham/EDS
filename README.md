# EDS (Edwin's Dev Space)

Welcome to the EDS project repository! EDS, short for Edwin's Dev Space, is a web application that provides users with a browser-based CLI to run different Linux systems using Docker containers.

## Table of Contents
- [Introduction](#introduction)
- [Technology Stack](#technology-stack)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setting Up Locally](#setting-up-locally)
- [Contributing](#contributing)
- [License](#license)

## Introduction

EDS aims to create a seamless experience for users to run Linux systems in their browsers. By leveraging Docker containers, users can access a live CLI environment without the need for complex setups.

## Technology Stack

- **Frontend**: React JS, Tailwind CSS
- **Backend**: Node.js, MongoDB
- **Containerization**: Docker

## Getting Started

### Prerequisites

Make sure you have the following installed on your machine:

- [Docker](https://www.docker.com/get-started)
- [Node.js](https://nodejs.org/)
- [MongoDB](https://www.mongodb.com/try/download/community)

### Setting Up Locally

1. **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/eds.git
    cd eds
    ```

2. **Setup Backend:**

    a. Install Node.js dependencies:

    ```bash
    cd backend
    npm install
    ```

    b. Start MongoDB server:

    ```bash
    # Ensure MongoDB is installed and running
    mongod
    ```

    c. Set up environment variables:

    Create a `.env` file in the `backend` directory and add the following:

    ```env
    PORT=3001
    MONGODB_URI=mongodb://localhost:27017/eds
    ```

    d. Run the backend server:

    ```bash
    npm start
    ```

3. **Setup Frontend:**

    a. Install React dependencies:

    ```bash
    cd frontend
    npm install
    ```

    b. Set up environment variables:

    Create a `.env` file in the `frontend` directory and add the following:

    ```env
    REACT_APP_BACKEND_URL=http://localhost:3001
    ```

    c. Run the frontend:

    ```bash
    npm start
    ```

4. **Access the Application:**

    Open your browser and navigate to `http://localhost:3000`. You should see the EDS application running.

## Contributing

We welcome contributions from the community! Before getting started, please read our [Contribution Guidelines](CONTRIBUTING.md).

## License

This project is licensed under the [MIT License](LICENSE).
