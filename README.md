# Managed-waste-management-route-planner-
SAP-ABAP -Managed waste management route planner  project
<# Managed Waste Management Route Planner ♻️🚚

## 📌 Project Overview
The **Waste Management Route Planner** is an enterprise-grade backend application built using the **SAP ABAP RESTful Application Programming Model (RAP)**. This project demonstrates a **Managed Scenario**, where the RAP framework automatically handles standard transactional operations (Create, Read, Update, Delete) without the need for manual ABAP SQL implementation. 

The application is designed to manage hierarchical waste collection data, allowing users to define primary collection routes and assign specific geographical stops to those routes to track waste capacity.

## 🚀 Key Features
* **Managed CRUD Operations:** Fully automated database interactions utilizing the RAP managed framework.
* **Hierarchical Data Model:** Parent-Child entity relationship mapping a main Route (Header) to multiple Collection Stops (Items).
* **Optimistic Concurrency Control:** Implemented ETag handling based on system timestamps to prevent data overwriting.
* **Fiori Elements Integration:** UI completely driven by backend CDS Metadata Extensions, ensuring a seamless and standardized frontend experience.
* **OData V2 Service:** Backend exposed via an OData V2 UI binding for direct consumption by SAP Fiori.

## 🛠️ Technical Architecture

This project strictly follows the RAP layered architecture:

### 1. Database Layer
* **`ZROUTE_015`**: Primary table storing route details (Route ID, Driver Name, Vehicle Number, Status).
* **`ZSTOP_015`**: Child table storing individual stop details (Stop ID, Location, Waste Type, Capacity).

### 2. Core Data Services (CDS) Layer
* **Interface Views (`ZI_ROUTE_015`, `ZI_STOP_015`):** Base data models defining the root and child entities, establishing the composition relationship.
* **Projection Views (`ZC_ROUTE_015`, `ZC_STOP_015`):** Consumption-specific views tailored for the UI.

### 3. Business Logic Layer (Behavior)
* **Interface Behavior Definition (`ZI_ROUTE_015`):** Defines the `managed` behavior, locking mechanisms, and ETag master/dependent relationships.
* **Projection Behavior Definition (`ZC_ROUTE_015`):** Exposes the `use create`, `use update`, and `use delete` operations to the Fiori frontend.
* **Behavior Implementation Class (`ZBP_I_ROUTE_015`):** Serves as the placeholder for custom business logic, validations, and determinations (empty by default in managed CRUD).

### 4. UI & Service Layer
* **Metadata Extensions (`ZME_ROUTE_015`, `ZME_STOP_015`):** Contains `@UI` annotations to structure Fiori Object Pages, Facets, and Line Items.
* **Service Definition (`ZUI_ROUTE_015_SD`):** Exposes the projection views to the service scope.
* **Service Binding (`ZUI_ROUTE_015_O2`):** Binds the definition to an OData V2 UI protocol.

## 💻 Technologies Used
* SAP BTP (Business Technology Platform) ABAP Environment
* Eclipse with ABAP Development Tools (ADT)
* Core Data Services (CDS)
* SAP Fiori Elements

## 📸 Screenshots

<img width="1920" height="1020" alt="Route List View" src="https://github.com/user-attachments/assets/4f975564-5a3a-4950-991a-3fafd1a3a73a" />

<img width="1920" height="1020" alt="Route Object Page" src="https://github.com/user-attachments/assets/28b06627-753e-49c3-9777-756bce58777e" />
