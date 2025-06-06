#!/bin/bash
echo "Installing project dependencies..."
npm ci
echo "Running linter..."
npm run lint
echo "Running tests..."
npm test
