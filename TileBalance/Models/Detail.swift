//
//  Detail.swift
//  TileBalance
//
//  Created by Corry Handayani on 18/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import Foundation

//IMPORTANT : due to XCODE - v11 need to import swift ui in swift file, otherwise wont work
import SwiftUI

struct Detail: Hashable, Codable, Identifiable{
    var id: Int
    var detail: String
    var desc: String
    var actionlink: String
}
