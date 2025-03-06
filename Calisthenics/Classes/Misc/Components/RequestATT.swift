//
//  RequestATT.swift
//  Calisthenics
//
//  Created by Андрей Чернышев on 06.03.2025.
//

import UIKit
import AppTrackingTransparency

final class RequestATT {
    private lazy var rtaAttemptNumber = 0
}

// MARK: Public
extension RequestATT {
    func requestTrackingAuthorization(completion: (() -> Void)? = nil) {
        guard rtaAttemptNumber <= 4 else {
            completion?()
            return
        }
        
        rtaAttemptNumber += 1
        
        if UIApplication.shared.keyWindow == nil {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
                self?.requestTrackingAuthorization(completion: completion)
            }
            
            return
        }
        
        switch ATTrackingManager.trackingAuthorizationStatus {
        case .notDetermined:
            ATTrackingManager.requestTrackingAuthorization(completionHandler: { _ in
                completion?()
            })
        default:
            completion?()
        }
    }
}
