# Todo MERN Stack Application

A full-stack Todo application built with the MERN stack (MongoDB, Express.js, React.js, Node.js) that allows users to create, view, and delete todo items.

## 🚀 Features

- **Create Todos**: Add new todo items with a simple input field
- **View Todos**: Display all todos in a clean list format
- **Delete Todos**: Remove todos by clicking on them
- **Real-time Updates**: UI updates automatically after operations
- **Responsive Design**: Works on desktop and mobile devices

## 🛠️ Tech Stack

### Backend

- **Node.js** - JavaScript runtime
- **Express.js** - Web application framework
- **MongoDB** - NoSQL database
- **Mongoose** - MongoDB object modeling
- **dotenv** - Environment variable management

### Frontend

- **React.js** - JavaScript library for building user interfaces
- **Axios** - HTTP client for API requests
- **React Scripts** - Development and build tools

### Development Tools

- **Nodemon** - Auto-restart server during development
- **Concurrently** - Run multiple commands simultaneously

## 📁 Project Structure

```
Todo/
├── client/                 # React frontend
│   ├── public/            # Static files
│   │   ├── components/    # React components
│   │   │   ├── Todo.js    # Main todo component
│   │   │   ├── Input.js   # Input form component
│   │   │   └── ListTodo.js # Todo list component
│   │   ├── App.js         # Main app component
│   │   └── index.js       # React entry point
│   └── package.json       # Frontend dependencies
├── models/
│   └── todo.js           # MongoDB schema
├── routes/
│   └── api.js            # API endpoints
├── index.js              # Express server
└── package.json          # Backend dependencies
```

## 🚀 Getting Started

### Prerequisites

- Node.js (v14 or higher)
- MongoDB (local installation or MongoDB Atlas)
- npm or yarn package manager

### Installation

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd Todo
   ```

2. **Install backend dependencies**

   ```bash
   npm install
   ```

3. **Install frontend dependencies**

   ```bash
   cd client
   npm install
   cd ..
   ```

4. **Environment Setup**
   Create a `.env` file in the root directory:

   ```env
   DB=mongodb://localhost:27017/todo
   PORT=5000
   ```

   For MongoDB Atlas, use your connection string:

   ```env
   DB=mongodb+srv://username:password@cluster.mongodb.net/todo
   ```

5. **Start the application**

   ```bash
   npm run dev
   ```

   This will start both the backend server (port 5000) and frontend development server (port 3000) concurrently.

### Available Scripts

- `npm start` - Start the production server
- `npm run start-watch` - Start server with nodemon for development
- `npm run dev` - Start both backend and frontend in development mode

## 📡 API Endpoints

### GET `/api/todos`

- **Description**: Retrieve all todos
- **Response**: Array of todo objects with `_id` and `action` fields

### POST `/api/todos`

- **Description**: Create a new todo
- **Body**: `{ "action": "todo text" }`
- **Response**: Created todo object

### DELETE `/api/todos/:id`

- **Description**: Delete a todo by ID
- **Response**: Deleted todo object

## 🎯 Usage

1. **Adding a Todo**: Type your todo text in the input field and click "add todo"
2. **Viewing Todos**: All todos are displayed in a list below the input
3. **Deleting a Todo**: Click on any todo item to delete it

## 🔧 Development

### Backend Development

- Server runs on port 5000
- MongoDB connection with Mongoose
- CORS enabled for frontend communication
- Error handling middleware

### Frontend Development

- React app runs on port 3000
- Proxy configured to backend API
- Component-based architecture
- State management with React hooks

## 🐛 Troubleshooting

### Common Issues

1. **MongoDB Connection Error**

   - Ensure MongoDB is running locally or Atlas connection string is correct
   - Check your `.env` file configuration

2. **Port Already in Use**

   - Kill processes using ports 3000 or 5000
   - Or change ports in `.env` and `client/package.json`

3. **Module Not Found Errors**
   - Run `npm install` in both root and client directories
   - Clear node_modules and reinstall if needed

### Development Tips

- Use `rs` in the terminal to restart nodemon manually
- Check browser console for frontend errors
- Monitor server logs for backend issues

## 📝 License

This project is licensed under the ISC License.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📞 Support

For support or questions, please open an issue in the repository.
