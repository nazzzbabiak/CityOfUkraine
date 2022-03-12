//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        
        Location(
            name: "Ukraine",
            cityName: "Kyiv",
            coordinates: CLLocationCoordinate2D(latitude: 50.455939, longitude: 30.558752),
            description: "Київ — столиця та найбільше місто України, одне з найбільших і найстаріших міст Європи. Розташований у середній течії Дніпра, у північній Наддніпрянщині. Політичний, соціально-економічний, транспортний, освітньо-науковий, історичний, культурний та духовний центр України. У системі адміністративно-територіального устрою України Київ має спеціальний статус, визначений Конституцією, і не входить до складу жодної області, хоча і є адміністративним центром Київської області. Місце розташування центральних органів влади України, іноземних місій, штаб-квартир більшості підприємств і громадських об'єднань, що працюють в Україні.",
            imageNames: [
                "ukraine-kyiv-1",
                "ukraine-kyiv-2",
                "ukraine-kyiv-3",
                "ukraine-kyiv-4",
                "ukraine-kyiv-5",
                "ukraine-kyiv-6",
            ],
            link: "https://uk.wikipedia.org/wiki/Київ"),
        Location(
            name: "Ukraine",
            cityName: "Ternopil",
            coordinates: CLLocationCoordinate2D(latitude: 49.5537, longitude: 25.5890),
            description: "Терно́піль — місто в Україні, політико-адміністративний, економіко-діловий, релігійний та культурний центр Тернопільської області. Один з трьох головних центрів історико-географічного регіону Галичина. Тернопіль стоїть на річці Серет.",
            imageNames: [
                "ukraine-ternopil-1",
                "ukraine-ternopil-2",
                "ukraine-ternopil-3",
            ],
            link: "https://uk.wikipedia.org/wiki/Тернопіль"),
        Location(
            name: "Ukraine",
            cityName: "Kharkiv",
            coordinates: CLLocationCoordinate2D(latitude: 49.9953, longitude: 36.2391),
            description: "Харків — місто на північному сході України на Слобожанщині, науковий центр України, адміністративний центр Харківської області. Друге за кількістю мешканців місто України з населенням 1 421 125 осіб. Площа міста — 370 км². Разом із прилеглими містами та районами утворює Харківську агломерацію з людністю понад 2 млн осіб. Місто-герой України (з 2022)",
            imageNames: [
                "ukraine-kharkiv-1",
                "ukraine-kharkiv-2",
                "ukraine-kharkiv-3",
                "ukraine-kharkiv-4",
                "ukraine-kharkiv-5",
                "ukraine-kharkiv-6",
                "ukraine-kharkiv-7",
            ],
            link: "https://uk.wikipedia.org/wiki/Харків"),
        Location(
            name: "Ukraine",
            cityName: "Odessa",
            coordinates: CLLocationCoordinate2D(latitude: 46.4881, longitude: 30.7256),
            description: "Одеса — місто на чорноморському узбережжі Українию Місто-герой. Адміністративний центр Одеської області та Одеського району. Культурний, освітньо-науковий, туристичний та торговий осередок країни. Найбільший морський торговий порт держави. Великий автомобільний та залізничний вузол. Місто являє собою окрему Одеську міську територіальну громаду. За чисельністю населення Одеса є третім в Україні містом після Києва та Харкова (станом на 1 січня 2022 року в Одесі проживало 1 010 537 осіб[4]). В Одесі діють: машинобудівна, хімічна, нафтопереробна, харчова та легка промисловості. Також налічується 37 закладів вищої освіти, шість театрів, вісім кінотеатрів, філармонія, цирк, музеї, галереї тощо.",
            imageNames: [
                "ukraine-odessa-1",
                "ukraine-odessa-2",
                "ukraine-odessa-3",
                "ukraine-odessa-4",
                "ukraine-odessa-5",
                "ukraine-odessa-6",
                "ukraine-odessa-7",
                "ukraine-odessa-8",
                "ukraine-odessa-9",
                "ukraine-odessa-10",
                "ukraine-odessa-11",
                "ukraine-odessa-12",
            ],
            link: "https://uk.wikipedia.org/wiki/Одеса"),
        Location(
            name: "Ukraine",
            cityName: "Dnipro",
            coordinates: CLLocationCoordinate2D(latitude: 48.5057, longitude: 35.0657),
            description: "Дніпро — місто в Україні на обох берегах річки Дніпро, адміністративний центр Дніпропетровської області, Дніпровського району та Дніпровської міської громади. Місто є четвертим за чисельністю населення (968 502 станом на 1 січня 2022 року) в Україні після Києва, Харкова та Одеси. Дніпро вважається «космічною столицею» України.",
            imageNames: [
                "ukraine-dnipro-1",
            ],
            link: "https://uk.wikipedia.org/wiki/Дніпро_(місто)"),
        Location(
            name: "Ukraine",
            cityName: "Ternopil",
            coordinates: CLLocationCoordinate2D(latitude: 49.5537, longitude: 25.5890),
            description: "Терно́піль — місто в Україні, політико-адміністративний, економіко-діловий, релігійний та культурний центр Тернопільської області. Один з трьох головних центрів історико-географічного регіону Галичина. Тернопіль стоїть на річці Серет.",
            imageNames: [
                "ukraine-ternopil-1",
                "ukraine-ternopil-2",
                "ukraine-ternopil-3",
            ],
            link: "https://uk.wikipedia.org/wiki/Тернопіль"),
        Location(
            name: "Ukraine",
            cityName: "Ternopil",
            coordinates: CLLocationCoordinate2D(latitude: 49.5537, longitude: 25.5890),
            description: "Терно́піль — місто в Україні, політико-адміністративний, економіко-діловий, релігійний та культурний центр Тернопільської області. Один з трьох головних центрів історико-географічного регіону Галичина. Тернопіль стоїть на річці Серет.",
            imageNames: [
                "ukraine-ternopil-1",
                "ukraine-ternopil-2",
                "ukraine-ternopil-3",
            ],
            link: "https://uk.wikipedia.org/wiki/Тернопіль"),
        Location(
            name: "Ukraine",
            cityName: "Ternopil",
            coordinates: CLLocationCoordinate2D(latitude: 49.5537, longitude: 25.5890),
            description: "Терно́піль — місто в Україні, політико-адміністративний, економіко-діловий, релігійний та культурний центр Тернопільської області. Один з трьох головних центрів історико-географічного регіону Галичина. Тернопіль стоїть на річці Серет.",
            imageNames: [
                "ukraine-ternopil-1",
                "ukraine-ternopil-2",
                "ukraine-ternopil-3",
            ],
            link: "https://uk.wikipedia.org/wiki/Тернопіль"),
    ]
    
}
