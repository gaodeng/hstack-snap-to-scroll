import SnapToScroll
import SwiftUI

// MARK: - Example3ContentView

struct Example3ContentView: View {

    // MARK: Internal

    var body: some View {

        VStack {

            Text("Getting Started")
                .font(.system(size: 22, weight: .semibold, design: .rounded))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.top, .leading], 32)

            HStackSnap(alignment: .center(32)) {

                ForEach(GettingStartedModel.exampleModels) { viewModel in

                    GettingStartedView(
                        selectedIndex: $selectedGettingStartedIndex,
                        viewModel: viewModel)
                        .snapAlignmentHelper(id: viewModel.id)
                }
            } onSwipe: { index in

                selectedGettingStartedIndex = index
            }
            .frame(height: 200)
            .padding(.top, 4)
        }
        .padding([.top, .bottom], 64)
        .background(LinearGradient(
            colors: [Color("Cream"), Color("LightPink")],
            startPoint: .top,
            endPoint: .bottom))
    }

    // MARK: Private

    @State private var selectedGettingStartedIndex: Int = 0
}

// MARK: - Example3ContentView_Previews

struct Example3ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Example3ContentView()
    }
}
