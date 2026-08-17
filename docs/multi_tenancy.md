## Documantion to Apartament - Mult-tenacy

**Database Commands (Rake Tasks)**

```bash
rails apartment:migrate  # Runs migrations across all tenant schemas
rails apartment:rollback # Rolls back the last migration across all tenants
rails apartment:seed     # Runs seeds across all tenants

```

**Creating a new tenant (PG Schema):**

```ruby
# Creates the PostgreSQL schema and automatically runs migrations
Apartment::Tenant.create('company_a')

```

**Switching tenants manually in code:**

```ruby
Apartment::Tenant.switch('company_a') do
  # Queries here will be scoped to the 'company_a' schema
  Project.all
end

```