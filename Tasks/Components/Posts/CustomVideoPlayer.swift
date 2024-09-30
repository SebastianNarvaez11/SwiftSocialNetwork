//
//  CustomVideoPlayer.swift
//  Tasks
//
//  Created by Sebastian on 30/09/24.
//

import SwiftUI
import AVKit

struct CustomVideoPlayer: UIViewControllerRepresentable {
    let player: AVPlayer
    
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIViewController()
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill // Ajustar para que llene el espacio sin distorsionarse
        playerLayer.frame = UIScreen.main.bounds // Define el tamaño de la capa para que ocupe toda la pantalla
        controller.view.layer.addSublayer(playerLayer)
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
     
    }
}
