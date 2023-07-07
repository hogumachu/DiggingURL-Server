//
//  CompositionRoute.swift
//
//
//  Created by 홍성준 on 2023/07/07.
//

import Vapor

public enum CompositionRoute {
    
    public static func routes(_ app: Application) throws {
        try routeGroup(using: app)
    }
    
    static func routeGroup(using app: Application) throws {
        let groupController: GroupController = MockGroupControllerImp()
        let groupRouter: GroupRouter = GroupRouterImp(controller: groupController)
        try groupRouter.routes(using: app)
    }
    
}
