import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // ড্যাশবোর্ড গ্রিড
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                        GameOptionBox(title: "Start Game", icon: "play.circle.fill", color: .green)
                        GameOptionBox(title: "Library", icon: "square.grid.2x2.fill", color: .blue)
                        GameOptionBox(title: "Cloud Gaming", icon: "cloud.rainbow.half.fill", color: .purple)
                        GameOptionBox(title: "Settings", icon: "cpu.fill", color: .orange)
                    }
                }
                .padding()
            }
            .navigationTitle("GameHub Engine")
            .toolbar {
                Text("JIT Enabled").font(.caption).foregroundColor(.green)
            }
        }
    }
}

struct GameOptionBox: View {
    let title: String
    let icon: String
    let color: Color
    
    var body: some View {
        VStack {
            Image(systemName: icon).font(.system(size: 45))
            Text(title).bold()
        }
        .frame(maxWidth: .infinity, minHeight: 160)
        .background(color.opacity(0.1))
        .cornerRadius(25)
        .overlay(RoundedRectangle(cornerRadius: 25).stroke(color, lineWidth: 2))
    }
}
