//
//  WidgetData.swift
//  TileBalance
//
//  Created by Corry Handayani on 6/9/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//


import Foundation

//IMPORTANT : due to XCODE - v11 need to import swift ui in swift file, otherwise wont work
import SwiftUI

struct WidgetData: Hashable, Codable, Identifiable{
    var id: Int
    var statusTitle: String
    var iconName: String
}
