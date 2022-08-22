//
//  ExpensesModel.swift
//  MyExpenses
//
//  Created by NOUNI on 8/21/22.
//

import Foundation

struct ExpensesModel :Identifiable{
    let id = UUID()
    var store : String
    var paid : Double
    var storeimage : String
    var purchases : String
}

var ExpensesRay = [
    ExpensesModel(store: "adidas originals", paid: 20.500, storeimage: "adid", purchases: "Hoodie"),
    ExpensesModel(store: "The body shop", paid: 5.500, storeimage: "tbs", purchases: "Shampoo"),
    ExpensesModel(store: "amazon", paid: 45.500, storeimage: "az", purchases: "Kindle"),
    ExpensesModel(store: "Zara", paid: 18.500, storeimage: "zr", purchases: "Shirt"),
    ExpensesModel(store: "StockX", paid: 180, storeimage: "xx", purchases: "Shoes")

 
]

//var adidas = ExpensesModel(store: "adidas originals", paid: 20.500, storeimage: "adid", purchases: ["Hoodie"])
//var bodyshop = ExpensesModel(store: "The body shop", paid: 5.500, storeimage: "tbs", purchases: ["Shampoo","conditioner"])
//var amazon = ExpensesModel(store: "amazon", paid: 45.500, storeimage: "az", purchases: ["Kindle"])
//var zara = ExpensesModel(store: "Zara", paid: 18.500, storeimage: "zr", purchases: ["Shirt"])
//var stockx = ExpensesModel(store: "StockX", paid: 180, storeimage: "xx", purchases: ["Shoes"])



//var ExpensesRay = ["adidas", "bodyshop", "amazon", "zara", "stockx" ]
