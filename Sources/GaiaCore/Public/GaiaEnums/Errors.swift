//
//  © 2021 - 2022 Qualcomm Technologies, Inc. and/or its subsidiaries. All rights reserved.
//

import Foundation
import GaiaBase

public extension GaiaError {
    func userVisibleName() -> String {
        switch self {
        case .writeToDeviceTimedOut:
            return NSLocalizedString("Timed out waiting for acknowledgement.", comment: "General error reason")
        case .deviceVersionCouldNotBeDetermined:
            return NSLocalizedString("Device API version could not be determined.", comment: "General error reason")
        case .transportSetupFailed:
            return NSLocalizedString("Couldn't set up transport", comment: "Error")
        case .systemError(let err):
            return err.localizedDescription
        }
    }
}



