import Cocoa

// 스위프트 기초 문법 09. Generic

// Generic - <>로 표시, 어떠한 자료든지 받겠다는 뜻.
// 보통 T를 Generic으로 많이 씀.
// var element: [T] = [T]() 이런식
struct MyArray<someElement> {
    
    // Generic을 담은 빈 배열
    var elements: [someElement] = [someElement]()
    
    // 생성자
    init(_ elements: [someElement]) {
        self.elements = elements
        
    }
}

var mySomeArray = MyArray([1,2,3,])
print("mySomeArray: \(mySomeArray)")
// mySomeArray: MyArray<Int>(elements: [1, 2, 3])


var myStringArray = MyArray(["가","나","다"])
print("myStringArray: \(myStringArray)")
// myStringArray: MyArray<String>(elements: ["가", "나", "다"])


print("###########################################################")

struct Friend {
    var name: String
}

let friend_01 = Friend(name: "준규")
let friend_02 = Friend(name: "기훈")
let friend_03 = Friend(name: "상빈")

var myFriendsArray = MyArray([friend_01,friend_02,friend_03])
print("myFriendsArray: \(myFriendsArray)")
// myFriendsArray: MyArray<Friend>(elements: [__lldb_expr_11.Friend(name: "준규"), __lldb_expr_11.Friend(name: "기훈"), __lldb_expr_11.Friend(name: "상빈")])

