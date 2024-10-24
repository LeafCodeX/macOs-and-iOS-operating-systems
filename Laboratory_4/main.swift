//
//  main.swift
//  Laboratory_4
//
//  Created by Marcin Bajkowski on 10/04/2024.
//

import Foundation

class Location {
    var ID: Int
    var type: String
    var name: String
    var rating: Int
    
    init(ID: Int, type: String, name: String, rating: Int){
        self.ID = ID
        self.type = type
        self.name = name
        self.rating = rating
    }
}
 
class City {
    var ID: Int
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
    var keywords = [String]()
    var locations = [Location]()
    
    init(ID: Int, name: String, description: String, latitude: Double, longitude: Double, keywords: [String], locations: [Location]){
        self.ID = ID
        self.name = name
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
        self.keywords = keywords
        self.locations = locations
    }
}

var cities = [City]()

cities.append(City(ID: 1, name: "Warsaw", description: "The capital of Poland", latitude: 52.23, longitude: 21.01, keywords: ["history", "culture"], locations: [Location(ID: 22, type: "Museum", name: "National", rating: 5), Location(ID: 23, type: "Restaurant", name: "Pierogi", rating: 4), Location(ID: 24, type: "Cafe", name: "Coffee House", rating: 3)]))
cities.append(City(ID: 2, name: "Berlin", description: "The capital of Germany", latitude: 52.52, longitude: 13.41, keywords: ["art", "nightlife"], locations: [Location(ID: 25, type: "Museum", name: "Pergamon", rating: 4), Location(ID: 26, type: "Restaurant", name: "Currywurst", rating: 4), Location(ID: 27, type: "Cafe", name: "Café am Neuen See", rating: 4)]))
cities.append(City(ID: 3, name: "Paris", description: "The capital of France", latitude: 48.85, longitude: 2.35, keywords: ["romance", "fashion"], locations: [Location(ID: 1, type: "Museum", name: "Louvre", rating: 5), Location(ID: 2, type: "Restaurant", name: "Bistro", rating: 4), Location(ID: 3, type: "Cafe", name: "Le Consulat", rating: 5)]))
cities.append(City(ID: 4, name: "Rome", description: "The capital of Italy", latitude: 41.9, longitude: 12.49, keywords: ["history", "cuisine"], locations: [Location(ID: 19, type: "Museum", name: "Vatican Museums", rating: 5), Location(ID: 20, type: "Restaurant", name: "Trattoria", rating: 4), Location(ID: 21, type: "Cafe", name: "Caffè Sant'Eustachio", rating: 5)]))
cities.append(City(ID: 5, name: "Madrid", description: "The capital of Spain", latitude: 40.42, longitude: -3.7, keywords: ["art", "tapas"], locations: [Location(ID: 31, type: "Museum", name: "Prado", rating: 3), Location(ID: 32, type: "Restaurant", name: "Tapas Bar", rating: 4), Location(ID: 33, type: "Cafe", name: "Chocolatería San Ginés", rating: 4)]))
cities.append(City(ID: 6, name: "Lisbon", description: "The capital of Portugal", latitude: 38.72, longitude: -9.14, keywords: ["architecture", "fado"], locations: [Location(ID: 52, type: "Museum", name: "National Tile Museum", rating: 4), Location(ID: 53, type: "Restaurant", name: "Pasteis de Belém", rating: 3), Location(ID: 54, type: "Cafe", name: "A Brasileira", rating: 4)]))
cities.append(City(ID: 7, name: "London", description: "The capital of the United Kingdom", latitude: 51.51, longitude: -0.13, keywords: ["culture", "royalty"], locations: [Location(ID: 49, type: "Museum", name: "British Museum", rating: 5), Location(ID: 50, type: "Restaurant", name: "Fish and Chips Shop", rating: 4), Location(ID: 51, type: "Cafe", name: "Sketch", rating: 5)]))
cities.append(City(ID: 8, name: "Athens", description: "The capital of Greece", latitude: 37.98, longitude: 23.73, keywords: ["history", "food"], locations: [Location(ID: 40, type: "Museum", name: "Acropolis Museum", rating: 5), Location(ID: 41, type: "Restaurant", name: "Souvlaki Tavern", rating: 4), Location(ID: 42, type: "Cafe", name: "Stani", rating: 4)]))
cities.append(City(ID: 9, name: "Vienna", description: "The capital of Austria", latitude: 48.2, longitude: 16.37, keywords: ["music", "history"], locations: [Location(ID: 42, type: "Museum", name: "Albertina", rating: 5), Location(ID: 44, type: "Restaurant", name: "Schnitzel House", rating: 4), Location(ID: 45, type: "Cafe", name: "Café Sacher", rating: 5)]))
cities.append(City(ID: 10, name: "Stockholm", description: "The capital of Sweden", latitude: 59.33, longitude: 18.07, keywords: ["design", "nature"], locations: [Location(ID: 37, type: "Museum", name: "Vasa Museum", rating: 3), Location(ID: 38, type: "Restaurant", name: "Meatballs for the People", rating: 4), Location(ID: 39, type: "Cafe", name: "Café Saturnus", rating: 4)]))
cities.append(City(ID: 11, name: "Oslo", description: "The capital of Norway", latitude: 59.91, longitude: 10.75, keywords: ["fjords", "culture"], locations: [Location(ID: 28, type: "Museum", name: "Viking Ship Museum", rating: 5), Location(ID: 29, type: "Restaurant", name: "Ekebergrestauranten", rating: 4), Location(ID: 30, type: "Cafe", name: "Fuglen", rating: 5)]))
cities.append(City(ID: 12, name: "Helsinki", description: "The capital of Finland", latitude: 60.17, longitude: 24.94, keywords: ["sauna", "design"], locations: [Location(ID: 34, type: "Museum", name: "Ateneum", rating: 5), Location(ID: 35, type: "Restaurant", name: "Savotta", rating: 4), Location(ID: 36, type: "Cafe", name: "Café Regatta", rating: 4)]))
cities.append(City(ID: 13, name: "Copenhagen", description: "The capital of Denmark", latitude: 55.68, longitude: 12.57, keywords: ["hygge", "cuisine"], locations: [Location(ID: 46, type: "Museum", name: "National Museum of Denmark", rating: 5), Location(ID: 47, type: "Restaurant", name: "Noma", rating: 5), Location(ID: 48, type: "Cafe", name: "Democratic Coffee", rating: 4)]))
cities.append(City(ID: 14, name: "Dublin", description: "The capital of Ireland", latitude: 53.35, longitude: -6.26, keywords: ["pubs", "literature"], locations: [Location(ID: 4, type: "Museum", name: "Guinness Storehouse", rating: 3), Location(ID: 5, type: "Restaurant", name: "Chapter One", rating: 4), Location(ID: 6, type: "Cafe", name: "Queen of Tarts", rating: 4)]))
cities.append(City(ID: 15, name: "Reykjavik", description: "The capital of Iceland", latitude: 64.15, longitude: -21.94, keywords: ["geothermal", "culture"], locations: [Location(ID: 10, type: "Museum", name: "The Settlement Exhibition", rating: 5), Location(ID: 11, type: "Restaurant", name: "Grillmarkaðurinn", rating: 4), Location(ID: 12, type: "Cafe", name: "Café Babalú", rating: 4)]))
cities.append(City(ID: 16, name: "Bucharest", description: "The capital of Romania", latitude: 44.43, longitude: 26.1, keywords: ["architecture", "nightlife"], locations: [Location(ID: 22, type: "Museum", name: "Village Museum", rating: 5), Location(ID: 23, type: "Restaurant", name: "Caru' cu Bere", rating: 4), Location(ID: 24, type: "Cafe", name: "Gradina Verona", rating: 4)]))
cities.append(City(ID: 17, name: "Prague", description: "The capital of Czech Republic", latitude: 50.08, longitude: 14.44, keywords: ["architecture", "beer"], locations: [Location(ID: 19, type: "Museum", name: "National Museum", rating: 5), Location(ID: 20, type: "Restaurant", name: "U Fleků", rating: 4), Location(ID: 21, type: "Cafe", name: "Café Louvre", rating: 4)]))
cities.append(City(ID: 18, name: "Budapest", description: "The capital of Hungary", latitude: 47.5, longitude: 19.04, keywords: ["spa", "cuisine"], locations: [Location(ID: 31, type: "Museum", name: "Hungarian National Museum", rating: 5), Location(ID: 32, type: "Restaurant", name: "Onyx", rating: 5), Location(ID: 33, type: "Cafe", name: "New York Café", rating: 4)]))
cities.append(City(ID: 19, name: "Zagreb", description: "The capital of Croatia", latitude: 45.81, longitude: 15.98, keywords: ["history", "cuisine"], locations: [Location(ID: 52, type: "Museum", name: "Mimara Museum", rating: 4), Location(ID: 53, type: "Restaurant", name: "Vinodol", rating: 4), Location(ID: 54, type: "Cafe", name: "Vincek", rating: 3)]))
cities.append(City(ID: 20, name: "Bratislava", description: "The capital of Slovakia", latitude: 48.15, longitude: 17.11, keywords: ["history", "Danube"], locations: [Location(ID: 49, type: "Museum", name: "Bratislava Castle", rating: 5), Location(ID: 50, type: "Restaurant", name: "Slovak Pub", rating: 4), Location(ID: 51, type: "Cafe", name: "Urban House", rating: 4)]))


func searchName(_ name: String) -> [City] {
    return cities.filter { $0.name == name }
}

func searchKeyword(_ keyword: String) -> [City] {
    return cities.filter { $0.keywords.contains(keyword) }
}

func calculateDistance(_ city1: City, _ city2: City) -> Double {
    let x = pow(city2.latitude - city1.latitude, 2)
    let y = city2.longitude - city1.longitude
    let temp = pow(cos(city1.latitude * .pi / 180) * y, 2)
    let distance = sqrt(x + temp) * (40075.7 / 360)
    return distance
}

func closestAndFarthestCity(latitude: Double, longitude: Double) -> (City, City) {
    let userCity = City(ID: 0, name: "", description: "", latitude: latitude, longitude: longitude, keywords: [], locations: [])
    
    var closestCity = cities[0]
    var farthestCity = cities[0]
    var minDistance = Double.infinity
    var maxDistance: Double = 0
    
    for city in cities {
        let distance = calculateDistance(userCity, city)
        if distance < minDistance {
            minDistance = distance
            closestCity = city
        }
        if distance > maxDistance {
            maxDistance = distance
            farthestCity = city
        }
    }
    
    return (closestCity, farthestCity)
}

func twoFarthestCities() -> (City, City) {
    var maxDistance: Double = 0
    var farthestCities = (cities[0], cities[0])
    
    for i in 0..<cities.count {
        for j in (i + 1)..<cities.count {
            let distance = calculateDistance(cities[i], cities[j])
            if distance > maxDistance {
                maxDistance = distance
                farthestCities = (cities[i], cities[j])
            }
        }
    }
    
    return farthestCities
}

func citiesWithFiveStarRestaurants() -> [City] {
    return cities.filter { city in
        city.locations.contains { $0.type == "Restaurant" && $0.rating == 5 }
    }
}

func relatedLocationsToCity(_ city: City) -> [Location] {
    return city.locations.sorted(by: { $0.rating > $1.rating })
}

func locationsWithFiveStars() {
    for city in cities {
        let fiveStarLocations = city.locations.filter { $0.rating == 5 }
        
        if fiveStarLocations.isEmpty {
            print("\t\t- Not found locations with 5 stars in \(city.name)!")
        } else {
            print("\t- Locations {amount: \(fiveStarLocations.count)} with 5 stars in \(city.name):", terminator: "")
            for (index, location) in fiveStarLocations.enumerated() {
                let separator = (index == fiveStarLocations.count - 1) ? "" : ","
                print(" {\(location.name)}", terminator: separator)
            }
            print()
        }
    }
}

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
print(">> Exercise 1 - Data model (1 point):")
print(">> [INFO] Display array with 20 cities.")
print("Cities:")
for city in cities {
    print("\t- \(city.ID), \(city.name), \(city.description), \(city.latitude), \(city.longitude), \(city.keywords)")
}
print()

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
print(">> Exercise 2 - Search (1 point):")
print(">> Exercise 2.1 - Search by name (Kabul):")
print(">> [INFO] Display function with searched city name:")
let searchedCitiesByName = searchName("Kabul")
for city in searchedCitiesByName {
    print("\t- \(city.name)")
}
print()

print(">> Exercise 2.2 - Search by keyword (seaside):")
print(">> [INFO] Display function with searched city keyword:")
let searchedCitiesByKeyword = searchKeyword("seaside")
for city in searchedCitiesByKeyword {
    print("\t- \(city.name)")
}
print()

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
print(">> Exercise 3 - Distance (1 point):")
print(">> Exercise 3.1 - Calculate distance between two cities:")
print(">> [INFO] Calculate distance between two cities based on coordinates.")
let city1 = cities[0]
let city2 = cities[1]
let distance = calculateDistance(city1, city2)
print("\t- Distance between \(city1.name) and \(city2.name): \(distance) km")
print()

print(">> Exercise 3.2 - Distance between closest and farthest city:")
print(">> [INFO] User coordinates as parameter and display the closest and farthest city.")
let (closestCity, farthestCity) = closestAndFarthestCity(latitude: 52.23, longitude: 21.01)
print("\t- Closest city: \(closestCity.name)")
print("\t- Farthest city: \(farthestCity.name)")
print()

print(">> Exercise 3.3 - Distance between two farthest cities:")
print(">> [INFO] Display two farthest cities from city’s array.")
let (farthestCity1, farthestCity2) = twoFarthestCities()
print("\t- \(farthestCity1.name) and \(farthestCity2.name)")
print()

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
print(">> Exercise 4 - Extend data model (1 point):")
print(">> [INFO] Extend City data model with list of locations.")
print("Cities:")
for city in cities {
    print("\t- \(city.ID), \(city.name), \(city.description), \(city.latitude), \(city.longitude), \(city.keywords)")
    if !city.locations.isEmpty {
        print("\t\tLocations:")
        for location in city.locations {
            print("\t\t- \(location.ID), \(location.type), \(location.name), \(location.rating)")
        }
    } else {
        print("\t\tNo locations found for this city.")
    }
}
print()

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
print(">> Exercise 5 - Advance search (1 point):")
print(">> Exercise 5.1 - Cities with 5-star restaurants:")
print(">> [INFO] Function which display list of cities which have restaurants with 5 star rating.")
let citiesWithFiveStarRestaurantsList = citiesWithFiveStarRestaurants()
if !citiesWithFiveStarRestaurantsList.isEmpty {
    for city in citiesWithFiveStarRestaurantsList {
        print("\t- \(city.name)")
    }
} else {
    print("\t- No cities with 5-star restaurants found.")
}
print()

print(">> Exercise 5.2 - Related locations to a city sorted by rating:")
print(">> [INFO] Display function with city as parameter and return list of related locations sorted by rating.")
let relatedLocations = relatedLocationsToCity(cities[6])
if !relatedLocations.isEmpty {
    print("Related locations to \(cities[6].name) sorted by rating:")
    for location in relatedLocations {
        print("\t- \(location.name)")
    }
} else {
    print("\t- No related locations found for \(cities[6].name).")
}
print()

print(">> Exercise 5.3 - Locations with 5 stars:")
print(">> [INFO] Display function which display all cities from array with information how many location with 5 star rating they have. Display this locations.")
locationsWithFiveStars()
