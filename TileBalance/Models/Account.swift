//
//  Account.swift
//  TileBalance
//
//  Created by Corry Handayani on 10/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import Foundation
//need to include : Hashable, Codable, Identifiable{
struct Account: Hashable, Codable, Identifiable{
    var id: Int
    var type: String
    var num: Int
}
