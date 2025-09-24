# Travel MS – Tourism Booking Website (Django + MySQL via XAMPP)

A production-ready Django project for a tourism booking platform. Users can browse destinations and packages, search/filter hotels, book bus trips or rent vehicles, register/login, and complete bookings with payment options: bKash, Nagad, Card, or COD.

## 1) Tech Stack
- Backend: Django (Python 3.10+ recommended)
- Frontend: Raw HTML5 + CSS (no frontend frameworks)
- DB: MySQL (via XAMPP)
- Payments: Placeholder sandbox flows (bKash/Nagad/Card) + webhook endpoints

## 2) Project Structure
```
Travel MS/
├─ manage.py
├─ travelms/
│  ├─ settings.py
│  ├─ urls.py
│  ├─ asgi.py
│  └─ wsgi.py
├─ accounts/        # Custom User model, auth views/forms
├─ destinations/    # Destination & Package
├─ hotels/          # Hotel & Room
├─ transport/       # Vendor, Vehicle, BusTrip
├─ bookings/        # Booking flow
├─ payments/        # Payment model + placeholder flows
├─ templates/       # All HTML templates
├─ static/css/      # main.css
└─ schema.sql       # Importable MySQL schema (phpMyAdmin)
```

## 3) Prerequisites (Windows + XAMPP)
- Install Python 3.10+ (add to PATH)
- Install XAMPP and start MySQL (ensure port 3306)
- Install Microsoft C++ Build Tools (for `mysqlclient` wheel, if needed)
- Ensure pip is updated: `python -m pip install --upgrade pip`

## 4) Create and Activate Virtual Environment
```powershell
cd "F:\\Travel MS"
python -m venv .venv
.\\.venv\\Scripts\\activate
```

## 5) Install Dependencies
```powershell
pip install django mysqlclient
```
If `mysqlclient` fails, install a prebuilt wheel suitable for your Python/MySQL version or install MySQL Connector C. See: `https://pypi.org/project/mysqlclient/`.

## 6) Configure MySQL (XAMPP)
- Open phpMyAdmin: `http://localhost/phpmyadmin`
- Create database: `travel_ms` (utf8mb4, collation utf8mb4_general_ci)
- Option A (Django migrations): skip importing `schema.sql`
- Option B (Manual SQL): import `schema.sql` into `travel_ms`

## 7) Configure Django Settings
Django already defaults to MySQL via environment variables. You can either set env vars or edit `travelms/settings.py` directly.

Environment variables (recommended):
```powershell
setx DJANGO_SECRET_KEY "change-this-in-prod"
setx DJANGO_DEBUG "1"
setx DJANGO_ALLOWED_HOSTS "127.0.0.1,localhost"
setx MYSQL_DATABASE "travel_ms"
setx MYSQL_USER "root"
setx MYSQL_PASSWORD ""
setx MYSQL_HOST "127.0.0.1"
setx MYSQL_PORT "3306"
```
Then restart the terminal or run `refreshenv` if using Chocolatey.

Notes:
- Custom user model is `accounts.User` (already set: `AUTH_USER_MODEL = 'accounts.User'`).
- Static files: `/static/` (dev) and `staticfiles/` (collectstatic target).
- Media uploads: `/media/` → `media/` directory.

## 8) Apply Migrations
```powershell
python manage.py makemigrations
python manage.py migrate
```

## 9) Create Superuser
```powershell
python manage.py createsuperuser
```

## 10) Run Development Server
```powershell
python manage.py runserver
```
Visit `http://127.0.0.1:8000/`.

## 11) Admin Panel
- URL: `/admin/`
- Manage: Destinations, Packages, Hotels, Rooms, Vendors, Vehicles, Bus Trips, Bookings, Payments, Users

## 12) Booking Flow
- Browse:
  - Destinations: `/destinations/`
  - Destination Detail → Packages → Package Detail
  - Hotels: `/hotels/` with filters (q, price, amenities)
  - Transport: `/transport/` → Trips → Trip Detail (enter seats)
- Book:
  - Click “Book Now” on package/room/trip
  - If not logged in, login/register
  - Checkout page shows summary, traveler details, payment choice
  - Payment:
    - COD marks booking as Pending Cash and confirms page
    - bKash/Nagad/Card use placeholder redirect to success/failure

## 13) Payment Placeholders (Sandbox)
- Start endpoint: `/payments/start/<method>/<booking_id>/`
- Webhook (stub): `/payments/webhook/<provider>/`
- Return URL (simulated): `/payments/return/<provider>/?payment_id=...&status=SUCCESS|FAILED`
- Actual gateway integration should replace the placeholder redirect logic in `payments/views.py` and verify signatures in `payment_webhook`.

## 14) Static and Media
```powershell
# Dev usually serves static automatically
python manage.py collectstatic --noinput
```
- Ensure `static/` and `media/` directories are present or will be created.

## 15) Importing schema.sql (Optional)
If you prefer manual schema setup:
- Import `schema.sql` in phpMyAdmin to the `travel_ms` database
- You can still run migrations; Django will adjust as needed. Prefer clean DB when mixing methods.

## 16) Environment for Email
By default, console backend is used. To use SMTP, set:
```powershell
setx EMAIL_HOST "smtp.example.com"
setx EMAIL_PORT "587"
setx EMAIL_HOST_USER "username"
setx EMAIL_HOST_PASSWORD "password"
setx EMAIL_USE_TLS "1"
```

## 17) Common Issues
- mysqlclient build errors: install VC++ Build Tools; confirm MySQL dev libraries; or use a prebuilt wheel matching Python and MySQL versions.
- Access denied: verify MySQL root password (often empty for XAMPP) and host `127.0.0.1`.
- Migration conflicts: delete old migration files if you changed models heavily and recreate migrations (dev only).

## 18) Production Notes
- Set `DJANGO_DEBUG=0` and configure `ALLOWED_HOSTS`
- Configure proper SMTP, logging, and a real email/SMS provider
- Use a production-ready DB user with limited privileges
- Serve static/media via a web server (e.g., Nginx) and use Gunicorn/Uvicorn
- Replace payment placeholders with real gateway integrations (bKash/Nagad/Card)

## 19) Quickstart Commands (Recap)
```powershell
cd "F:\\Travel MS"
.\\.venv\\Scripts\\activate
pip install django mysqlclient
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser
python manage.py runserver
```

---
Maintainers can extend apps with additional features (reviews, coupons, itinerary builder, seat maps, etc.). Contributions welcome.

## 20) MySQL Driver Setup (PyMySQL Fallback)
On Windows/XAMPP, compiling `mysqlclient` can be troublesome. This project supports PyMySQL as a drop-in replacement. We already enable it via `travelms/__init__.py` by calling `pymysql.install_as_MySQLdb()`.

Install PyMySQL and Pillow:
```powershell
cd "F:\\Travel MS"
.\\.venv\\Scripts\\activate
pip install pymysql pillow
```
No change is needed in `travelms/settings.py` — keep:
```python
DATABASES = {
	'default': {
		'ENGINE': 'django.db.backends.mysql',
		'NAME': 'travel_ms',
		'USER': 'root',
		'PASSWORD': '',
		'HOST': '127.0.0.1',
		'PORT': '3306',
	}
}
```

If you previously installed `mysqlclient` and see driver errors:
```powershell
pip uninstall -y mysqlclient
```

## 21) Updated Quick Install (Windows)
```powershell
cd "F:\\Travel MS"
python -m venv .venv
.\\.venv\\Scripts\\activate
pip install --upgrade pip
pip install django pymysql pillow
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser
python manage.py runserver
```

## 22) Troubleshooting (Migrations / Superuser / Dev Server)
- "Import django.db could not be resolved": select the correct interpreter in your editor (VS Code → Python: Select Interpreter → `F:\\Travel MS\\.venv`). Ensure Django is installed inside that venv.
- "Requires MariaDB" or client lib errors: with PyMySQL installed and `travelms/__init__.py` enabling it, Django connects to MySQL (XAMPP) without MariaDB. Ensure MySQL is running and credentials/host/port match.
- Access denied/connection refused: verify DB `travel_ms` exists in phpMyAdmin and user/password are correct. Use `HOST=127.0.0.1` (not `localhost`) and port `3306`.
- ImageField errors: ensure `Pillow` is installed.
- Stuck migrations after changing models in dev: delete app migration files (not in prod), drop DB, then re-run `makemigrations` and `migrate`.

## 23) Technologies and Languages Used
- Python 3.11, Django 4.1.13
- MySQL/MariaDB (XAMPP), PyMySQL driver
- HTML5, CSS (custom, responsive), minimal JavaScript
- Apps: `accounts`, `destinations`, `hotels`, `transport`, `bookings`, `payments`

## 24) Final Setup Summary
```powershell
cd "F:\\Travel MS"
python -m venv .venv
.\\.venv\\Scripts\\activate
pip install --upgrade pip
pip install "django==4.1.13" pymysql pillow
python manage.py makemigrations
python manage.py migrate
python manage.py runserver
```
Database settings are in `travelms/settings.py` under `DATABASES['default']`.

## 25) Default Credentials (Dev)
- Admin: `http://127.0.0.1:8000/admin/`
- Dashboard: `http://127.0.0.1:8000/admin/dashboard/`
- Username: `admin`
- Password: `Admin@12345` (change immediately for production)

## 26) Feature Notes
- Registration/login required before booking.
- Booking summary + simple payment placeholders (bKash/Nagad/Card/COD).
- Admin CRUD for destinations, packages, hotels, vehicles, trips, bookings, payments, users.
- Auto logout on browser close; password complexity disabled in dev.
