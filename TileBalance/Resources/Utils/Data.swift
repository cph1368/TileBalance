//
//  Data.swift
//  TileBalance
//
//  Created by Corry Handayani on 10/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//  used to fetch data

import Foundation

var accounts:[Account] = load("Account.json")
var details:[Detail] = load("Details.json")


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle")
        
    }
    do {
        data = try Data(contentsOf: file)
    }
    catch {
       fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    catch{
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error) ")
    }
}
