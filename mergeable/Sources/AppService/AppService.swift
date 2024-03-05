
import Verge

public enum AppService {

  struct State: StateType {
    var count: Int = 0
  }

  public static func run() {

    let store = Store<State, Never>(initialState: .init())

//    store.sinkState { state in
//      print("State updated: \(state)")
//    }
//    .storeWhileSourceActive()

    print("Hello, I'm AppService, \(store)")

    store.commit {
      $0.count += 1
    }
  }
}
