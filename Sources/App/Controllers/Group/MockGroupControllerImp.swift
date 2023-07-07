//
//  MockGroupControllerImp.swift
//  
//
//  Created by 홍성준 on 2023/07/07.
//

import Vapor

final class MockGroupControllerImp: GroupController {
    
    func groups(groupID: GroupID) -> [Group] {
        let mockGroups: [Group] = [
            .init(id: "1", name: "Test1", tags: ["A", "B", "C"], links: ["https://naver.com", "https://google.com", "https://daum.net"]),
            .init(id: "2", name: "Test2", tags: ["A", "B", "C"], links: ["https://naver.com", "https://google.com", "https://daum.net"]),
            .init(id: "3", name: "Test3", tags: ["A", "B", "C"], links: ["https://naver.com", "https://google.com", "https://daum.net"])
        ]
        return mockGroups
    }
    
}

