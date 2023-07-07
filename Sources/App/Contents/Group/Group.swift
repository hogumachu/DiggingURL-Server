//
//  Group.swift
//  
//
//  Created by 홍성준 on 2023/07/07.
//

import Vapor

struct Group: Content {
    var id: String
    var name: String
    var tags: [String]
    var links: [String]
}
