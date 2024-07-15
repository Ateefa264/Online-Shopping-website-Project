# Online Shopping Website

Welcome to the Online Shopping Website project! This project supports essential e-shopping functions like product management, categorization, order processing, and rating collection. Its robust design and efficient data handling ensure a smooth and pleasant shopping experience for users.

## Introduction

Our database supports essential e-shopping functions like product management, categorization, order processing, and rating collection. Its robust design and efficient data handling ensure a smooth and pleasant shopping experience for users. With organized data management, our database is integral to delivering seamless e-shopping experiences.

## Functionalities

### Add a New Product
Allow administrators to add new products to the database by inserting records into the `Product` table.

### Assign Categories to Products
Allow administrators to assign categories to products by inserting records into the `Category` table, linking products to categories.

### View Products by Category
Enable users to view products grouped by category by querying the `Product` and `Category` tables.

### Select Product Sizes
Allow users to select product sizes by querying the `Size` table based on the product and category.

### Place an Order
Enable users to place orders by inserting records into the `Order` table, specifying the user ID, product ID, category ID, price, and size ID.

### View Order History
Allow users to view their order history by querying the `Order` table based on the user ID.

### Rate Orders
Allow users to rate their orders by inserting records into the `OrderRating` table, providing a rating ID and description for each order.

### Update Product Information
Allow administrators to update product information such as name, description, and price by updating records in the `Product` table.

### Premium Customers
Customers who place orders very frequently (orders ≥ 5) will get a 10% discount on their next purchase.

### View Product Details
Enable users to view detailed information about a product, including its name, description, price, category, and available sizes, by querying the `Product`, `Category`, and `Size` tables.

## Project Structure

The project is organized into backend and frontend components. 

## Technologies Used

- **Backend**: MySQL, ASP.NET, C#
- **Frontend**: ASP.NET, HTML, CSS, JavaScript

## Getting Started

### Prerequisites

- [.NET Framework](https://dotnet.microsoft.com/download)
- [MySQL](https://www.mysql.com/downloads/)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Ateefa264/OnlineShoppingWebsiteProject.git

