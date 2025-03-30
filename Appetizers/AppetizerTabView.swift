import SwiftUI

struct AppetizerTabView: View {
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithDefaultBackground() // ✅ Restores default grey background
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                        .environment(\.symbolVariants, .none)
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                        .environment(\.symbolVariants, .none)
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                        .environment(\.symbolVariants, .none)

                    Text("Order")
                }
        }.accentColor(.brandPrimaryColor)
    }
}

#Preview {
    AppetizerTabView()
}
