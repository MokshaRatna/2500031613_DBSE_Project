# Online Auction and Bidding Platform

A web-based application for secure, efficient, and transparent buying and selling through online auctions. The platform allows sellers to create auction listings and enables buyers to participate in real-time bidding.

## 📌 Project Overview

The **Online Auction and Bidding Platform** manages the complete auction process, from product listing and live bidding to winner selection, payment, and settlement.

Sellers can provide product details, starting prices, and auction durations, while buyers can browse available products and place bids in real time.

The system uses **React.js** for the frontend, **Node.js** and **Express.js** for the backend, and **MySQL** for storing user, auction, bidding, payment, and transaction data.

## 🎯 Objectives

* Provide a secure platform for online buying and selling.
* Allow sellers to create and manage auction listings.
* Allow buyers to participate in live auctions.
* Provide real-time bid updates.
* Ensure fair participation using an anti-sniping mechanism.
* Manage payments and auction settlements securely.
* Provide separate dashboards for buyers, sellers, and administrators.
* Support auction verification and dispute management.
* Maintain reliable and transparent auction records.

## ✨ Key Features

### 👤 User Management

* User registration and authentication
* JWT-based authentication and authorization
* Role-based access for buyers, sellers, and administrators

### 🏷️ Auction Management

* Create auction listings
* Add product details
* Set starting prices
* Define auction duration
* Browse available auctions
* Track auction status

### ⚡ Real-Time Bidding

* Live bidding using **Socket.io**
* Instant bid updates for connected users
* Real-time auction information
* Competitive bidding experience

### ⏱️ Anti-Sniping Mechanism

The platform extends the auction timer when a bid is placed close to the closing time. This helps prevent last-second bids from unfairly ending an auction and provides fair participation.

### 💳 Payment and Settlement

* Secure payment processing through **Stripe API**
* Winner selection after auction completion
* Payment processing
* Transaction and settlement management

### 🚀 Performance

**Redis** is used for caching and managing frequently accessed auction data to improve system performance.

### 🛡️ Administration

* Separate administrator dashboard
* Auction verification
* User and auction management
* Dispute management

## 🛠️ Technology Stack

| Technology         | Purpose                                       |
| ------------------ | --------------------------------------------- |
| React.js           | Frontend development and user interface       |
| Node.js            | Backend runtime environment                   |
| Express.js         | Backend API and server development            |
| MySQL              | Database management and storage               |
| Socket.io          | Real-time bidding and live auction updates    |
| Redis              | Caching and real-time auction data management |
| Stripe API         | Secure online payment and settlement          |
| JWT                | User authentication and authorization         |
| Postman            | API testing                                   |
| Visual Studio Code | Development environment                       |
| Git & GitHub       | Version control and project management        |

## 🏗️ System Architecture

```text
                    ┌─────────────────────┐
                    │       Users         │
                    │ Buyers / Sellers /  │
                    │      Admins         │
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │     React.js        │
                    │     Frontend        │
                    └──────────┬──────────┘
                               │
                 ┌─────────────┴─────────────┐
                 │                           │
                 ▼                           ▼
        ┌─────────────────┐         ┌─────────────────┐
        │ Express.js API  │         │    Socket.io    │
        │    + Node.js    │         │ Real-time Bids  │
        └────────┬────────┘         └────────┬────────┘
                 │                           │
        ┌────────┴─────────┐                 │
        │                  │                 │
        ▼                  ▼                 ▼
 ┌──────────────┐   ┌──────────────┐  ┌──────────────┐
 │    MySQL     │   │    Redis     │  │ Live Auction │
 │   Database   │   │    Cache     │  │    Updates   │
 └──────────────┘   └──────────────┘  └──────────────┘
                 │
                 ▼
          ┌──────────────┐
          │ Stripe API   │
          │   Payments   │
          └──────────────┘
```

## 🗄️ Database

MySQL is used to store and manage the application's persistent data.

The database handles information related to:

* Users
* Auctions
* Bids
* Payments
* Transactions
* Auction-related records

The database provides persistent storage while Redis is used to improve access to frequently requested auction data.

## 🔄 Auction Workflow

```text
Seller creates auction
        ↓
Admin verifies auction
        ↓
Auction becomes available
        ↓
Buyers place bids
        ↓
Socket.io broadcasts new bids
        ↓
Auction reaches closing time
        ↓
Anti-sniping check
        ↓
Winner is selected
        ↓
Payment through Stripe
        ↓
Transaction settlement
```

## 👥 User Roles

### Buyer

Buyers can:

* Browse available auctions
* View product details
* Place bids
* Receive real-time bid updates
* Track auction results
* Complete payments after winning

### Seller

Sellers can:

* Create auction listings
* Provide product information
* Set starting prices
* Define auction duration
* Monitor bidding activity
* Manage completed auctions

### Administrator

Administrators can:

* Manage users
* Verify auctions
* Monitor platform activity
* Handle disputes
* Manage auction-related issues

## 🔐 Security

The platform uses **JWT-based authentication and authorization** to control user access.

Security-related functionality includes:

* User authentication
* Role-based authorization
* Secure API access
* Secure payment processing through Stripe
* Controlled access to buyer, seller, and administrator functionality

## 🧪 API Testing

**Postman** is used to test and validate backend APIs.

API testing can be performed for:

* User authentication
* Auction creation
* Auction retrieval
* Bid submission
* User-specific operations
* Payment-related operations

## 📁 Suggested Project Structure

```text
online-auction-platform/
│
├── frontend/
│   ├── src/
│   ├── public/
│   ├── package.json
│   └── README.md
│
├── backend/
│   ├── controllers/
│   ├── routes/
│   ├── models/
│   ├── middleware/
│   ├── config/
│   ├── server.js
│   └── package.json
│
├── database/
│   └── schema.sql
│
├── .gitignore
├── README.md
└── package.json
```

> Adjust the folder structure above to match the actual structure of your implementation.

## ⚙️ Installation and Setup

### 1. Clone the Repository

```bash
git clone <your-github-repository-url>
cd online-auction-platform
```

### 2. Install Backend Dependencies

```bash
cd backend
npm install
```

### 3. Install Frontend Dependencies

```bash
cd ../frontend
npm install
```

### 4. Configure MySQL

Create a MySQL database and configure the database connection in the backend.

Example:

```sql
CREATE DATABASE online_auction;
```

Import the project's SQL schema:

```bash
mysql -u root -p online_auction < database/schema.sql
```

### 5. Configure Environment Variables

Create a `.env` file in the backend directory.

```env
PORT=5000

DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=online_auction

JWT_SECRET=your_jwt_secret

REDIS_HOST=localhost
REDIS_PORT=6379

STRIPE_SECRET_KEY=your_stripe_secret_key
```

Do not commit `.env` files or secret keys to GitHub.

### 6. Start the Backend

```bash
cd backend
npm start
```

### 7. Start the Frontend

Open another terminal:

```bash
cd frontend
npm start
```

The frontend and backend will then run as configured in the project.

## 🧪 Testing

The backend APIs can be tested using **Postman**.

The testing process should cover:

1. User registration
2. User login
3. Auction creation
4. Auction retrieval
5. Bid placement
6. Real-time bid updates
7. Auction completion
8. Winner selection
9. Payment processing
10. Dispute management

## 🚀 Future Enhancements

Possible future improvements include:

* Mobile application support
* Advanced product search and filtering
* Email and notification services
* AI-based auction recommendations
* Detailed seller and buyer analytics
* Enhanced fraud detection
* Auction history and bidding analytics
* Multiple payment options

## 🎓 Academic Project

**Course:** Database Systems Engineering and Distributed Backend Development
**Course Code:** 25CS1302E
**Academic Year:** Y25 | 2026–2027
**Trimester:** 4
**Section:** 9
**Team:** 17
**Project Title:** Online Auction and Bidding Platform
**Institution:** Koneru Lakshmaiah Education Foundation
**Guide:** Dr. Prasanthi Y

## 👨‍💻 Team Members

| Roll Number | Name             |
| ----------- | ---------------- |
| 2520031613  | U. Moksha Ratna  |
| 2520030408  | Bista Jamuna     |
| 2520030115  | Piratla Dhanasri |

## 📌 Conclusion

The **Online Auction and Bidding Platform** provides a reliable and user-friendly environment for conducting online auctions. By combining React.js, Node.js, Express.js, MySQL, Socket.io, Redis, Stripe, and JWT, the system supports the complete auction lifecycle from product listing and live bidding to winner selection, payment, and settlement.

The project focuses on creating a **secure, transparent, real-time, and efficient auction experience** for buyers, sellers, and administrators.
