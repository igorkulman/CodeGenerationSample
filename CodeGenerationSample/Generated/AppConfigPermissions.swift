// GENERATED FILE - DO NOT EDIT
// Edit AppConfigPermissions.swift.gyb and build the project

import Foundation

struct AppConfigPermissions: Permissions {
    let accessLocation: Permission
    let deleteMessages: Permission

    init(config: [String: Any]) {
        let getPermissionForKey = { (key: String) -> Permission in
            if let value = config[key] as? Bool {
                switch value {
                case true:
                    return .Allow
                case false:
                    return .Deny
                }
            }
            return .Undefined
        }

        accessLocation = getPermissionForKey("allowAccessLocation")
        deleteMessages = getPermissionForKey("allowDeleteMessages")
    }
}
