//
//  Account.swift
//  TileBalance
//
//  Created by Corry Handayani on 10/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
// using swift file not view file 
 

//challenges - XCODE v11 and editor seems to have more bugs compared to latest version

import Foundation

//need to import swift ui in swift file, otherwise wont work
import SwiftUI

//need to include : Hashable, Codable, Identifiable{
struct Account: Hashable, Codable, Identifiable{
    var id: Int
    var type: String
    var num: Int
}
