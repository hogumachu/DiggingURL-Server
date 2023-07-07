//
//  GroupControllerImp.swift
//  
//
//  Created by 홍성준 on 2023/07/07.
//

import Vapor
import Fluent
import FluentMySQLDriver

final class GroupControllerImp: GroupController {
    
    func groups(using req: Request) async throws -> [Group] {
        return try await Group.query(on: req.db)
            .all()
    }
    
    func groups(using req: Request, groupID: GroupID) async throws -> [Group] {
        return try await Group.query(on: req.db)
            .all()
    }
    
    func createGroup(using req: Request) async throws {
        let group = try req.content.decode(Group.self)
        try await group.create(on: req.db)
    }
    
}
