// GENERATED FILE - DO NOT EDIT
// Edit Permissions.swift.gyb and build the project

import Foundation

public enum Permission {
    case Allow
    case Deny
    case Undefined
}

public protocol Permissions {
    var accessLocation: Permission { get }
    var deleteMessages: Permission { get }
}
