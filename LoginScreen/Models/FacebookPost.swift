//
//  FacebookPost.swift
//  LoginScreen
//
//  Created by Apple on 15/11/2022.
//

class FacebookPost {
    let link: String?
    let createdTime: String?
    let description: String?
    let picture: String?
    let name: String?

    init (dictionary: [String: String]) {
        self.name = dictionary["name"] as String?
        self.link = dictionary["link"] as String?
        self.description = dictionary["description"] as String?
        self.picture = dictionary["picture"] as String?
        self.createdTime = dictionary["created_time"] as String?
    }

    init(link: String?, name: String?, createdTime: String?, description: String?, picture: String?) {
        self.link = link
        self.createdTime = createdTime
        self.description = description
        self.picture = picture
        self.name = name
    }
}
