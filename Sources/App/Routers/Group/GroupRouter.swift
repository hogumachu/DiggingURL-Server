//
//  GroupRouter.swift
//  
//
//  Created by 홍성준 on 2023/07/07.
//

import Vapor

protocol GroupRouter: AnyObject {
    func routes(using app: Application) throws
}
