//
//  MenuModel.swift
//  Night_Club_Application
//
//  Created by Lubomir Olshansky on 27/07/2018.
//  Copyright © 2018 Lubomir Olshansky. All rights reserved.
//

import Foundation


class MenuItem {
    var name: String
    var glassPrice: String
    var bottlePrice: String
    var detail: String
    init(name: String, glassPrice: String, bottlePrice: String, detail: String) {
        self.name = name
        self.glassPrice = glassPrice
        self.bottlePrice = bottlePrice
        self.detail = detail
    }
}

class MenuModel {
    var sectionTitle: String
    var menuItems: [MenuItem]
    var isExpanded: Bool
    
    init(sectionTitle: String, menuItems: [MenuItem], isExpanded: Bool = false) {
        self.sectionTitle = sectionTitle
        self.menuItems = menuItems
        self.isExpanded = isExpanded
    }
    
    class func fetchData() -> [MenuModel] {
        
    let sectionData: [MenuModel] = [
        MenuModel(sectionTitle: "VODKA", menuItems: [
            MenuItem(name: "Absolut", glassPrice: "12zł", bottlePrice: "190zł", detail: ""),
            MenuItem(name: "Absolut Elyx", glassPrice: "26zł", bottlePrice: "440zł", detail: ""),
            MenuItem(name: "Absolut Elyx Magnum", glassPrice: "-", bottlePrice: "900zł", detail: ""),
            MenuItem(name: "Wyborowa Exqusite", glassPrice: "26zł", bottlePrice: "440zł", detail: ""),
            MenuItem(name: "Grey Goose", glassPrice: "12zł", bottlePrice: "190", detail: ""),
            MenuItem(name: "Ostoya", glassPrice: "20zł", bottlePrice: "350", detail: ""),
            MenuItem(name: "Ostoya 1.75 L", glassPrice: "-", bottlePrice: "800", detail: ""),
            MenuItem(name: "Becherovka", glassPrice: "14zł", bottlePrice: "245", detail: ""),
            MenuItem(name: "Zubrówka", glassPrice: "12zł", bottlePrice: "225", detail: "")
            ]),
        MenuModel(sectionTitle: "GIN", menuItems: [
            MenuItem(name: "Beefeter", glassPrice: "16zł", bottlePrice: "280", detail: ""),
            MenuItem(name: "Beefeter 24", glassPrice: "20zł", bottlePrice: "350", detail: ""),
            MenuItem(name: "Bombay Sapphire", glassPrice: "22zł", bottlePrice: "385", detail: ""),
            MenuItem(name: "Hendrick's", glassPrice: "30zł", bottlePrice: "525", detail: "")
            ]),
        MenuModel(sectionTitle: "TEQUILA", menuItems: [
            MenuItem(name: "Olmeca Blanco", glassPrice: "16zł", bottlePrice: "280", detail: ""),
            MenuItem(name: "Olmeca Gold", glassPrice: "16zł", bottlePrice: "280", detail: ""),
            MenuItem(name: "Olmeca Chocolate", glassPrice: "16zł", bottlePrice: "280", detail: ""),
            MenuItem(name: "Olmeca Altos Plata", glassPrice: "25zł", bottlePrice: "435", detail: ""),
            MenuItem(name: "Olmeca Altos Reposada", glassPrice: "25zł", bottlePrice: "435", detail: ""),
            MenuItem(name: "Patron Reposado", glassPrice: "50zł", bottlePrice: "875", detail: ""),
            ]),
        MenuModel(sectionTitle: "Classic Cocktails", menuItems: [
            MenuItem(name: "Long Island Ice Tea", glassPrice: "34", bottlePrice: "", detail: "Absolute Blue, Havana Club 3yo, Seagrams, Olmeca Blanco triple sec S&S mix, cola"),
            MenuItem(name: "Long Island Ice Tea", glassPrice: "34", bottlePrice: "", detail: "Absolute Blue, Havana Club 3yo, Seagrams, Olmeca Blanco triple sec S&S mix, cola"),
            MenuItem(name: "Long Island Ice Tea", glassPrice: "34", bottlePrice: "", detail: "Absolute Blue, Havana Club 3yo, Seagrams, Olmeca Blanco triple sec S&S mix, cola"),
            MenuItem(name: "Long Island Ice Tea", glassPrice: "34", bottlePrice: "", detail: "Absolute Blue, Havana Club 3yo, Seagrams, Olmeca Blanco triple sec S&S mix, cola"),
            MenuItem(name: "Long Island Ice Tea", glassPrice: "34", bottlePrice: "", detail: "Absolute Blue, Havana Club 3yo, Seagrams, Olmeca Blanco triple sec S&S mix, cola"),
           MenuItem(name: "Long Island Ice Tea", glassPrice: "34", bottlePrice: "", detail: "Absolute Blue, Havana Club 3yo, Seagrams, Olmeca Blanco triple sec S&S mix, cola")
            ]),
        MenuModel(sectionTitle: "Shots", menuItems: [
            MenuItem(name: "B-52", glassPrice: "23", bottlePrice: "", detail: "Baileys, Kahlua, Coinreau"),
            MenuItem(name: "B-52", glassPrice: "23", bottlePrice: "", detail: "Baileys, Kahlua, Coinreau"),
            MenuItem(name: "B-52", glassPrice: "23", bottlePrice: "", detail: "Baileys, Kahlua, Coinreau"),
            MenuItem(name: "B-52", glassPrice: "23", bottlePrice: "", detail: "Baileys, Kahlua, Coinreau"),
            MenuItem(name: "B-52", glassPrice: "23", bottlePrice: "", detail: "Baileys, Kahlua, Coinreau"),
            MenuItem(name: "B-52", glassPrice: "23", bottlePrice: "", detail: "Baileys, Kahlua, Coinreau"),
            MenuItem(name: "B-52", glassPrice: "23", bottlePrice: "", detail: "Baileys, Kahlua, Coinreau"),
            MenuItem(name: "B-52", glassPrice: "23", bottlePrice: "", detail: "Baileys, Kahlua, Coinreau"),
            MenuItem(name: "B-52", glassPrice: "23", bottlePrice: "", detail: "Baileys, Kahlua, Coinreau"),
            MenuItem(name: "B-52", glassPrice: "23", bottlePrice: "", detail: "Baileys, Kahlua, Coinreau")
            ])
        ]
        return sectionData
    }
}

