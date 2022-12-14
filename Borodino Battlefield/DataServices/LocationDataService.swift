//
//  LocationDataService.swift
//  Borodino Battlefield
//
//  Created by Александр Прайд on 18.09.2022.
//

import Foundation
import MapKit

class LocationDataService {
    
    static let locations: [Location] = [
        
        Location(name: "Музей-заповедник Бородинское Поле",
                 category: "Музей",
                 imageNames: ["museum_1", "museum_2", "museum_3"],
                 locationName: "д. Бородино",
                 description: "Музей-заповедник «Бородинское поле» — мемориал двух Отечественных войн, старейший в мире музей из созданных на полях сражений. На территории музея-заповедника в 110 км2 расположены более 200 памятников и памятных мест. В музее развернуты шесть постоянно действующих экспозиций. В фондах хранятся богатейшие коллекции археологии, печатной графики 1-й половины XIX века, редкой книги. Ежегодно на Бородинском поле проводятся военно-исторические праздники «День Победы», «Стойкий оловянный солдатик», «День Бородина» и «Москва за нами. 1941 год». В 2007 году музей был удостоен премии ЮНЕСКО за сохранение и управление культурным ландшафтом. В 2017 году музей-заповедник признан лучшим музеем военной истории.",
                 icon: "building.columns.fill",
                 link: "https://ru.wikipedia.org/wiki/Бородинский_военно-исторический_музей-заповедник)",
                 coordinates: CLLocationCoordinate2D(latitude: 55.519601, longitude: 35.821618)),
        Location(name: "Дворцово-парковый ансамбль",
                 category: "Музей",
                 imageNames: ["park_1", "park_3", "park_3"],
                 locationName: "д. Бородино",
                 description: "Дворцово-парковый ансамбль в селе Бородино, созданный в 1839 году, неразрывно связан с Бородинской битвой – генеральным сражением Отечественной войны 1812 года и созданием мемориала на Бородинском поле.\n\nВ состав ансамбля вошли церковь Рождества Христова (1701 год), деревянный дворец, перестроенный из господского дома, три кавалерских  флигеля, «столовая зала», «английский сад» – парк, хозяйственные постройки.\n\nДо 1912 года дворцово-парковый ансамбль в с. Бородино, наряду со Спасо-Бородинским монастырем и памятником на Батарее Раевского, был одной из главных достопримечательностей Бородинского поля.\n\nК 200-летнему юбилею Бородинского сражения полностью воссозданы парк, внешний облик зданий «столовая зала» (фондохранилища), Императорского дворца и «кондитерского флигеля». Проходя по аллеям парка, посетители могут увидеть восстановленный памятник-бюст императору Александру II.",
                 icon: "building.columns.fill",
                 link: "https://www.borodino.ru/ekspozitsii/dvortsovo-parkovyj-ansambl-v-sele-borodino/",
                 coordinates: CLLocationCoordinate2D(latitude: 55.527084674743485, longitude: 35.819559152492275)),
        Location(name: "«Доронино» музей крестьянского и военного быта",
                 category: "Музей",
                 imageNames: ["doronino_1", "doronino_2", "doronino_3"],
                 locationName: "д. Доронино",
                 description: "«Доронино» — это масштабный музей крестьянского и военного быта, расположенный на территории заповедника «Бородинское поле». Особенность его в том, что все постройки, элементы интерьера, вещи и предметы не пылятся на витринах, а живут своей жизнью и используются в ежедневном обиходе. Здесь особая атмосфера: переступив порог деревенской избы, словно переносишься на 200 лет назад. Перед самой битвой в деревеньки Можайского уезда стекались тысячи солдат, которые останавливались на постой в хатах местных крестьян. Драматичным неделям, предшествующим сражению, укладу крестьянской жизни и солдатским будням и посвящен музей.",
                 icon: "building.columns.fill",
                 link: "http://www.doronino.memorandum.ru",
                 coordinates: CLLocationCoordinate2D(latitude: 55.49747488303925, longitude: 35.7880343713592))
    
    ]
}
