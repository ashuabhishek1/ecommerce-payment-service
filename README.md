# Ecommerce Payment Service

Handles payment processing and refunds.

## Setup
1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
2. Initialize database:
   ```bash
   sqlite3 payment.db < config/schema.sql
   ```
3. Run the service:
   ```bash
   uvicorn src.main:app --reload
   ```

## Endpoints
- `POST /payment`: Process a payment

## Dependencies
- Database: SQLite (replace with production DB)
- Event Bus: For PaymentCompleted events
- Order Service: For order_id validation
- User Service: For customer_id validation

## Entities
- **Payment**: `{payment_id: Guid, order_id: Guid, customer_id: Guid, status: string}`
