//
//  Offline.swift
//  Pods
//
//  Created by Shahpour Benkau on 28/04/2017.
//
//

import Foundation

private final class OfflineQueue: OperationQueue {
    init(qualityOfService: QualityOfService) {
        super.init()
        self.qualityOfService = qualityOfService
    }
}

public final class OfflineConfiguration {
    fileprivate let queue: OperationQueue
    
    public init(queue: OperationQueue = OfflineQueue(qualityOfService: .utility)) {
        self.queue = queue
    }
}

public final class Offline {
    private let queue: OperationQueue
    
    public init(configuration: OfflineConfiguration = OfflineConfiguration()) {
        queue = configuration.queue
    }
}
