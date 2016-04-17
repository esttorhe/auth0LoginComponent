//
//  AccessToken.swift
//  Pods
//
//  Created by Esteban Torres on 16/4/16.
//
//

//// Native Frameworks
// Foundation
import Foundation

public struct AccessToken {
   let accessToken: String
   let idToken: String
   let tokenType: String
   
   public func toDictionary() -> [String: String] {
      return [
         "accessToken": accessToken,
         "idToken": idToken,
         "tokenType": tokenType
      ]
   }
}