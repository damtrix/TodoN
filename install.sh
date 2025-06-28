#!/bin/bash

echo "Installing backend dependencies..."
npm install

echo "Installing frontend dependencies..."
cd client && npm install

echo "All dependencies installed successfully!"
echo "Run 'npm run dev' to start the development servers." 