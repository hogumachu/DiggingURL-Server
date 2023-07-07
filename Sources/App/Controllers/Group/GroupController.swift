//
//  GroupController.swift
//  
//
//  Created by 홍성준 on 2023/07/07.
//

import Vapor

protocol GroupController: AnyObject {
    func groups(groupID: GroupID) -> [Group]
}
