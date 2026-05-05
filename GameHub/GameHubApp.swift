import SwiftUI

@main
struct GameHubApp: App {
    @State private var showingSplash = true
    
    var body: some Scene {
        WindowGroup {
            if showingSplash {
                SplashScreenView(isActive: $showingSplash)
            } else {
                DashboardView()
            }
        }
    }
}

struct SplashScreenView: View {
    @Binding var isActive: Bool
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Text("Welcome Sifat")
                .font(.system(size: 42, weight: .bold, design: .monospaced))
                .foregroundColor(.cyan)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation { isActive = false }
            }
        }
    }
}
