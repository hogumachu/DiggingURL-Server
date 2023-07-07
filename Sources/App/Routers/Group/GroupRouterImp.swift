//
//  GroupRouterImp.swift
//  
//
//  Created by 홍성준 on 2023/07/07.
//

import Vapor

final class GroupRouterImp: GroupRouter {
    
    private let controller: GroupController
    private let basePath: PathComponent = "group"
    
    init(controller: GroupController) {
        self.controller = controller
    }
    
    func routes(using app: Application) throws {
        app.get(basePath) { req -> [Group] in
            let groupID = try req.query.decode(GroupID.self)
            let groups = self.controller.groups(groupID: groupID)
            return groups
        }
    }
    
}
