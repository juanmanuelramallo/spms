# Software-project Management System

### Models:
1. Projects:
  - Name
  - Description (optional)
  - Url (optional)
  - Client
  - Transactions
2. Clients:
  - First name
  - Last name
  - Business name
  - Phone
  - Email
3. Transactions:
  - Code
  - Amount (positive if incoming)
  - Description
  - Due date (if outgoing)
4. Transaction codes:
  - Name
  - Default amount
  - Default due days
5. Notes
  - Belongs to a project
  - Name
  - Description
  - Datetime to remind (optional, by email)

### Features:
  - Ability to generate invoices by selecting outgoing transactions (expenses, money I’ve spent in the project, can be domain renovations, heroku payments, or hours of work)
