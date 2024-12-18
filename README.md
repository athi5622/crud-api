<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Management System Documentation</title>
</head>
<body>
  <h1>User Management System</h1>
  <p>This is a User Management System project consisting of a Flutter-based frontend and a Node.js backend. Below are the steps to set up and run the project locally.</p>

  <h2>Features</h2>
  <ul>
    <li>Create, Read, Update, and Delete (CRUD) operations for user data</li>
    <li>Frontend built with Flutter</li>
    <li>Backend powered by Node.js with Express</li>
    <li>Provider for state management</li>
    <li>Hosted on Render for live access</li>
  </ul>

  <h2>Setup Instructions</h2>

  <h3>Backend</h3>
  <ol>
    <li>Clone the repository and navigate to the <code>backend</code> folder in your terminal.</li>
    <li>Install the dependencies by running: <code>npm install</code></li>
    <li>Start the server: <code>node server.js</code></li>
    <li>The backend will run on <code>http://localhost:5000</code></li>
  </ol>

  <h3>Frontend (Flutter)</h3>
  <ol>
    <li>Navigate to the <code>user_management</code> folder.</li>
    <li>Install Flutter dependencies by running: <code>flutter pub get</code></li>
    <li>Run the application:
      <ul>
        <li>For web: <code>flutter run -d chrome</code></li>
        <li>For desktop: <code>flutter run -d windows</code></li>
      </ul>
    </li>
  </ol>

  <h2>How the Project Works</h2>
  <p>
    The frontend connects to the backend API to perform CRUD operations. The backend API manages user data with the following endpoints:
  </p>
  <ul>
    <li><code>GET /api/user/viewcreatedusers</code> - Fetch all users</li>
    <li><code>POST /api/user/create</code> - Create a new user</li>
    <li><code>PUT /api/user/update/:id</code> - Update an existing user</li>
    <li><code>DELETE /api/user/delete/:id</code> - Delete a user</li>
  </ul>

  <h2>Postman for Testing</h2>
  <p>Use <a href="https://www.postman.com/" target="_blank">Postman</a> to test the backend API. Import the following API endpoints and test with the appropriate HTTP methods (GET, POST, PUT, DELETE). Make sure to set the <code>Content-Type</code> header to <code>application/json</code> for POST and PUT requests.</p>

  <h2>Deployed Application</h2>
  <p>The backend is deployed on Render. You can access the API at:</p>
  <ul>
    <li><a href="https://crud-api-ebiu.onrender.com" target="_blank">https://crud-api-ebiu.onrender.com</a></li>
  </ul>
  <p>The frontend can also be hosted (instructions depend on your deployment setup).</p>

</body>
</html>
