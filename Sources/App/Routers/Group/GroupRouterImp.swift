//
//  GroupRouterImp.swift
//  
//
//  Created by 홍성준 on 2023/07/07.
//

import Vapor

final class GroupRouterImp: GroupRouter {
    
    private let controller: GroupController
    
    init(controller: GroupController) {
        self.controller = controller
    }
    
    func routes(using app: Application) throws {
        let base = app.grouped("group")
        
        base.get { req async throws -> [Group] in
            var groups: [Group]
            if let groupID = try? req.query.decode(GroupID.self) {
                groups = try await self.controller.groups(using: req, groupID: groupID)
            } else {
                groups = try await self.controller.groups(using: req)
            }
            return groups
        }
        
        base.post("create") { req async throws in
            try await self.controller.createGroup(using: req)
            return HTTPStatus.ok
        }
    }
    
}
