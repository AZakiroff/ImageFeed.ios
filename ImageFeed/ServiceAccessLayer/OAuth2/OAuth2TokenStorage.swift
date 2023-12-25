//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by Антон Закиров on 24.12.2023.
//

import Foundation

final class OAuth2TokenStorage {
    var token: String? {
        set {
            if let bearerToken = newValue { UserDefaults.standard.set(bearerToken, forKey: BearerTokenKey) }
            else { UserDefaults.standard.removeObject(forKey: BearerTokenKey) }
        }
        get {
            guard let bearerToken = UserDefaults.standard.object(forKey: BearerTokenKey) as? String else { return nil }
            return bearerToken
        }
    }
}
