/**
SceneDelegate.swift
hexagon (iOS)

Created by: Nino Kierulf on 28/2/22
Copyright (c) 2022 ninokierulf
*/

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            
            let navigationController = UINavigationController()
            let root = navigationController
            window.rootViewController = root
            self.window = window
            window.makeKeyAndVisible()
            
            let initialView = UIHostingController(rootView: ContentView())
            navigationController.setViewControllers([initialView], animated: false)
        }
    }
}
