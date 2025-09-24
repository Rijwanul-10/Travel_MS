from django.core.management.base import BaseCommand
from django.utils.text import slugify
from django.utils import timezone
from decimal import Decimal

from destinations.models import Destination, Package
from hotels.models import Hotel, Room
from transport.models import Vendor, Vehicle, BusTrip
from django.core.files.base import ContentFile
from pathlib import Path


class Command(BaseCommand):
	help = "Seed Bangladesh destinations, packages, hotels, vehicles and trips"

	def add_arguments(self, parser):
		parser.add_argument('--dest', type=int, default=0, help='Extra random destinations to create')
		parser.add_argument('--packages', type=int, default=0, help='Extra random packages to create')
		parser.add_argument('--hotels', type=int, default=0, help='Extra random hotels to create')
		parser.add_argument('--vehicles', type=int, default=0, help='Extra random vehicles to create')
		parser.add_argument('--trips', type=int, default=0, help='Extra random trips to create')

	def handle(self, *args, **options):
		import random
		random.seed(42)

		bd_places = [
			{"name": "Cox's Bazar", "country": "Bangladesh"},
			{"name": "Sylhet", "country": "Bangladesh"},
			{"name": "Bandarban", "country": "Bangladesh"},
			{"name": "Saint Martin", "country": "Bangladesh"},
			{"name": "Dhaka", "country": "Bangladesh"},
			{"name": "Chittagong", "country": "Bangladesh"},
			{"name": "Khulna", "country": "Bangladesh"},
			{"name": "Rajshahi", "country": "Bangladesh"},
			{"name": "Rangamati", "country": "Bangladesh"},
			{"name": "Kuakata", "country": "Bangladesh"},
		]

		assets_dir = Path('static/img')
		dest_map = {}
		for item in bd_places:
			dest, _ = Destination.objects.get_or_create(
				slug=slugify(item["name"]),
				defaults={
					"name": item["name"],
					"country": item["country"],
					"description": f"Explore {item['name']} with curated tours across Bangladesh.",
				}
			)
			dest_map[item["name"]] = dest

		# Packages per key destinations
		packages_data = [
			{"dest": "Cox's Bazar", "title": "Cox's Bazar Beach Escape 3D2N", "price": Decimal('149.99'), "days": 3,
			 "itinerary": ["Arrival & Beach walk", "Inani Beach & Himchori", "Shopping & Departure"],
			 "includes": ["Hotel", "Breakfast", "Airport transfer"]},
			{"dest": "Sylhet", "title": "Sylhet Tea Garden Retreat 3D2N", "price": Decimal('139.99'), "days": 3,
			 "itinerary": ["Ratargul Swamp Forest", "Tea Gardens", "Jaflong"],
			 "includes": ["Hotel", "Breakfast", "Local transport"]},
			{"dest": "Bandarban", "title": "Bandarban Hill Adventure 4D3N", "price": Decimal('199.99'), "days": 4,
			 "itinerary": ["Nilgiri", "Nafakhum Trail", "Shoilo Propat"],
			 "includes": ["Hotel", "Guide", "Breakfast"]},
			{"dest": "Saint Martin", "title": "Saint Martin Island Getaway 3D2N", "price": Decimal('189.99'), "days": 3,
			 "itinerary": ["Sea Beach", "Snorkeling", "Coral watching"],
			 "includes": ["Hotel", "Breakfast", "Boat transfer"]},
			{"dest": "Kuakata", "title": "Kuakata Sea Sunrise 2D1N", "price": Decimal('119.99'), "days": 2,
			 "itinerary": ["Sea Beach", "Sunrise & Sunset point"],
			 "includes": ["Hotel", "Breakfast"]},
		]

		for p in packages_data:
			d = dest_map[p["dest"]]
			pkg, _ = Package.objects.get_or_create(
				slug=slugify(p["title"]),
				defaults={
					"destination": d,
					"title": p["title"],
					"price": p["price"],
					"duration_days": p["days"],
					"itinerary": p["itinerary"],
					"includes": p["includes"],
					"excludes": ["Personal expenses"],
				}
			)
			# attach small local package image if empty
			if not pkg.image:
				img_path = assets_dir / 'placeholder-package.svg'
				pkg.image.save(f"{pkg.slug}.svg", ContentFile(img_path.read_bytes()), save=True)

		# Hotels and rooms
		hotel_specs = [
			{"dest": "Cox's Bazar", "name": "Sea Pearl Hotel", "addr": "Beach Road", "ppn": Decimal('49.00'), "amen": ["WiFi","AC"]},
			{"dest": "Sylhet", "name": "Tea View Resort", "addr": "Zindabazar", "ppn": Decimal('39.00'), "amen": ["WiFi","Breakfast"]},
			{"dest": "Bandarban", "name": "Hilltop Resort", "addr": "Nilgiri Road", "ppn": Decimal('35.00'), "amen": ["WiFi"]},
		]
		for h in hotel_specs:
			d = dest_map[h["dest"]]
			hotel, _ = Hotel.objects.get_or_create(
				destination=d,
				name=h["name"],
				defaults={"address": h["addr"], "price_per_night": h["ppn"], "star_rating": 4.2, "amenities": h["amen"]}
			)
			# Hotels could also have placeholder images if needed
			Room.objects.get_or_create(hotel=hotel, room_type="Deluxe", defaults={"capacity": 2, "price": hotel.price_per_night, "available": True})
			Room.objects.get_or_create(hotel=hotel, room_type="Family", defaults={"capacity": 4, "price": hotel.price_per_night + 15, "available": True})

		# Transport vendors, vehicles, trips
		vendor, _ = Vendor.objects.get_or_create(name="Bangla Travels", defaults={"contact_phone": "+8801700000000"})
		veh_specs = [
			{"dest": "Cox's Bazar", "type": Vehicle.BUS, "name": "CXB Express", "seats": 40, "pps": Decimal('8.00')},
			{"dest": "Sylhet", "type": Vehicle.BUS, "name": "Sylhet Express", "seats": 36, "pps": Decimal('7.50')},
			{"dest": "Dhaka", "type": Vehicle.CAR, "name": "Dhaka Sedan", "seats": 4, "pps": Decimal('25.00')},
		]
		for v in veh_specs:
			d = dest_map[v["dest"]]
			veh, _ = Vehicle.objects.get_or_create(
				vendor=vendor,
				destination=d,
				name=v["name"],
				defaults={"vehicle_type": v["type"], "seat_count": v["seats"], "price_per_seat": v["pps"], "features": ["AC","USB"]}
			)
			for i in range(1, 4):
				dep = timezone.now() + timezone.timedelta(days=i)
				arr = dep + timezone.timedelta(hours=6)
				BusTrip.objects.get_or_create(
					vehicle=veh,
					departure_time=dep,
					arrival_time=arr,
					defaults={"available_seats": [f"{r}{c}" for r in range(1, 11) for c in "ABCD"][:veh.seat_count]}
				)


		# Extra randomized data if requested
		extra_dests = options.get('dest') or 0
		if extra_dests > 0:
			divisions = ["Dhaka", "Chattogram", "Sylhet", "Rajshahi", "Khulna", "Barishal", "Rangpur", "Mymensingh"]
			for i in range(extra_dests):
				name = f"BD Spot {i+1}"
				d, _ = Destination.objects.get_or_create(
					slug=slugify(f"bd-spot-{i+1}"),
					defaults={"name": name, "country": "Bangladesh", "description": f"Auto generated spot in {random.choice(divisions)}."}
				)
				dest_map[name] = d

		extra_packages = options.get('packages') or 0
		if extra_packages > 0:
			for i in range(extra_packages):
				d = random.choice(list(dest_map.values()))
				title = f"{d.name} Tour {i+1}"
				price = Decimal(str(round(random.uniform(49, 299), 2)))
				Package.objects.get_or_create(
					slug=slugify(f"{title}-{i+1}"),
					defaults={
						"destination": d,
						"title": title,
						"price": price,
						"duration_days": random.randint(2, 7),
						"itinerary": ["Arrival", "Sightseeing", "Departure"],
						"includes": ["Hotel", "Breakfast"],
						"excludes": ["Personal expenses"],
					}
				)

		extra_hotels = options.get('hotels') or 0
		if extra_hotels > 0:
			for i in range(extra_hotels):
				d = random.choice(list(dest_map.values()))
				hotel_name = f"Hotel {d.name} {i+1}"
				ppn = Decimal(str(round(random.uniform(25, 120), 2)))
				hotel, _ = Hotel.objects.get_or_create(
					destination=d,
					name=hotel_name,
					defaults={"address": f"{d.name} Center", "price_per_night": ppn, "star_rating": round(random.uniform(3.0, 5.0), 1), "amenities": ["WiFi", "AC"]}
				)
				Room.objects.get_or_create(hotel=hotel, room_type="Standard", defaults={"capacity": 2, "price": ppn, "available": True})
				Room.objects.get_or_create(hotel=hotel, room_type="Suite", defaults={"capacity": 3, "price": ppn + 20, "available": True})

		# vendors/vehicles
		more_vendor, _ = Vendor.objects.get_or_create(name="BD Rentals", defaults={"contact_phone": "+8801800000000"})
		extra_vehicles = options.get('vehicles') or 0
		if extra_vehicles > 0:
			for i in range(extra_vehicles):
				d = random.choice(list(dest_map.values()))
				vtype = random.choice([Vehicle.BUS, Vehicle.CAR, Vehicle.MICROBUS])
				seat_count = 40 if vtype == Vehicle.BUS else (12 if vtype == Vehicle.MICROBUS else 4)
				pps = Decimal(str(round(random.uniform(5, 30), 2)))
				Vehicle.objects.get_or_create(
					vendor=more_vendor,
					destination=d,
					name=f"{d.name} {vtype} #{i+1}",
					defaults={"vehicle_type": vtype, "seat_count": seat_count, "price_per_seat": pps, "features": ["AC", "USB"]}
				)

		extra_trips = options.get('trips') or 0
		if extra_trips > 0:
			vehicles = list(Vehicle.objects.all())
			for i in range(extra_trips):
				veh = random.choice(vehicles)
				dep = timezone.now() + timezone.timedelta(days=random.randint(1, 30), hours=random.randint(0, 23))
				arr = dep + timezone.timedelta(hours=random.randint(3, 12))
				seats = [f"{r}{c}" for r in range(1, 11) for c in "ABCD"]
				BusTrip.objects.get_or_create(
					vehicle=veh,
					departure_time=dep,
					arrival_time=arr,
					defaults={"available_seats": seats[:veh.seat_count]}
				)

		self.stdout.write(self.style.SUCCESS("Seeded Bangladesh travel data (extended)."))


