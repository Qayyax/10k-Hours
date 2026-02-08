import SwiftUI

struct Skills_View: View {
    @State private var progress = 0.5
    @State private var isSkillAvailable = false
    var body: some View {
        ZStack() {
            if !isSkillAvailable {
                NoSkillsView()
            }
        }
    }
}

struct GaugeProgressStyle: ProgressViewStyle {
    var strokeColor: Color = .blue
    var strokeWidth: CGFloat = 20
    var cornerRadius: CGFloat = 10

    func makeBody(configuration: Configuration) -> some View {
        let fractionCompleted = CGFloat(configuration.fractionCompleted ?? 0)

        return GeometryReader { proxy in
            let width = proxy.size.width
            let height = max(2, strokeWidth)
            let progressWidth = max(0, min(1, fractionCompleted)) * width

            ZStack(alignment: .leading) {
                // Background track (unfinished path) with lower opacity
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(strokeColor.opacity(0.2))
                    .frame(height: height)

                // Foreground progress
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(strokeColor)
                    .frame(width: progressWidth, height: height)
            }
        }
        .frame(height: strokeWidth)
    }
}


#Preview {
    Skills_View()
}
