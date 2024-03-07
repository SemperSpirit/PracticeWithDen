//
//  SceneDelegate.swift
//  PracticeWithDen
//
//  Created by Kaiten Aiko on 07.03.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.windowScene = windowScene
        window?.makeKeyAndVisible()
        window?.rootViewController = ViewController()
    }
}

