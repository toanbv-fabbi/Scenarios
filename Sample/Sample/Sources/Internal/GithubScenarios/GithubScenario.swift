//
// Copyright © 2021 An Tran. All rights reserved.
//

import Foundation
import Scenarios
import SwiftUI

final class GithubScenario: Scenario {
    static var name: String = "Github - Home"
    static var kind: ScenarioKind = .screen
    static var category: ScenarioCategory = "Github"
    
    static var rootViewProvider: RootViewProviding {
        let service = GithubService()
        let githubView = RepositoryListView(viewModel: RepositoryListViewModel(githubService: service))
        return BasicAppController(rootViewController: UIHostingController(rootView: githubView))
    }
}
