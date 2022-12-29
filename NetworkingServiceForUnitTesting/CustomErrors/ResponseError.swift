//
//  CustomErrors.swift
//  NetworkingServiceForUnitTesting
//
//  Created by Michelle Grover on 12/28/22.
//

import Foundation


enum ResponseError:Error {
    case noData
    case noUrl
    case badStatusCode
    case badResponse
    case invalidUrl
}
