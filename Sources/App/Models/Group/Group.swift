//
//  Group.swift
//  
//
//  Created by 홍성준 on 2023/07/07.
//

import Vapor
import Fluent

final class Group: Model, Content {
    
    static let schema = "groups"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "tags")
    var tags: [String]
    
    @Field(key: "links")
    var links: [String]
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?

    @Timestamp(key: "updated_at", on: .update)
    var updatedAt: Date?
    
    init() {}
    
    init(id: UUID? = nil, name: String, tags: [String], links: [String]) {
        self.id = id
        self.name = name
        self.tags = tags
        self.links = links
    }
    
}
