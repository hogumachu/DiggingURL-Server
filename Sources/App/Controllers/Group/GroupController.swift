//
//  GroupController.swift
//  
//
//  Created by 홍성준 on 2023/07/07.
//

import Vapor

protocol GroupController: AnyObject {
    func groups(using req: Request) async throws -> [Group]
    func groups(using req: Request, groupID: GroupID) async throws -> [Group]
    func createGroup(using req: Request) async throws 
}
