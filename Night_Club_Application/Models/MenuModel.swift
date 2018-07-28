//
//  MenuModel.swift
//  Night_Club_Application
//
//  Created by Lubomir Olshansky on 27/07/2018.
//  Copyright © 2018 Lubomir Olshansky. All rights reserved.
//

import Foundation

struct MenuModel {
    var sectionTitle: String!
    var rowsInSection: [(name: String, price: String)]!
    var isExpanded: Bool
    
    init(sectionTitle: String, rowsInSection: [(name: String, price: String)], isExpanded: Bool) {
        self.sectionTitle = sectionTitle
        self.rowsInSection = rowsInSection
        self.isExpanded = isExpanded
    }
}
