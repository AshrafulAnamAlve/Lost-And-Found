# Lost and Found System

The **Lost and Found System** is a Java and MySQL-based desktop application designed to efficiently manage lost and found items. It provides secure login with two roles: **Admin** and **User**.

- **Admin**: Full access to manage users and oversee all item details.  
- **User**: Can add and manage lost/found item details, including owner information.

---

## Features
- Secure login (Admin/User roles)
- Add, edit, and manage lost/found item details
- Add owner details (name, email, phone)
- View combined product-owner information
- Export item details to PDF
- User-friendly desktop interface (Java Swing)
- Read-only access for unauthorized users

---

## Application Pages & Screenshots

| Page No & Name | Description | Screenshot |
|----------------|------------|------------|
| **1. Login** | User authentication (Admin/User login) | ![1 Login](Images/login.png) |
| **2. Home** | Dashboard with navigation buttons | ![2 Home](Images/home.png) |
| **3. User** | Manage user accounts (Admin only) | ![3 User](Images/user.png) |
| **4. Category** | Add/Edit/Delete product categories | ![4 Category](Images/category.png) |
| **5. Lost Product** | Add lost/found product details | ![5 Lost Product](Images/lost_product.png) |
| **6. Owner Details** | Add owner information (name, email, phone) | ![6 Owner Details](Images/owner_details.png) |
| **7. Owner and Product** | View combined product-owner information | ![7 Owner and Product](Images/owner_product.png) |
| **8. View** | View all items and generate PDF reports | ![8 View](Images/view.png) |
---

## Technology Stack
- **Java** (Swing GUI)
- **MySQL** (Database)
- **NetBeans IDE** (Development Environment)
- **iText / PDF Library** (for PDF export)

---

## How to Run
1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/Lost-and-Found-System.git
