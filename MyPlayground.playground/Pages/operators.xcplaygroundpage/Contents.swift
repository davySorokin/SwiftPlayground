import Foundation

var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

// (Addition) Add value to existing variable.
/*likeCount = likeCount + 1
 likeCount += 1
 Same thing - Short hand way

likeCount = likeCount + 1
likeCount += 1
print(likeCount)

(Subtraction)
 Short hand way

likeCount = likeCount - 1
likeCount -= 1

(Multiplication)
 Shory hand way for Multiplcation
 likeCount = likeCount * 1.5
 likeCount *= 1.5

likeCount = likeCount * 1.5
likeCount *= 1.5
*/

if likeCount == 5 {
    print("Post has exactly " + String(likeCount) + " likes.")
} else {
    print("Post doesn't have equal to 5 likes, it has " + String(likeCount) + " likes.")
}

if (likeCount == 5 && commentCount < 1) {
    print("Like Count & Comment Count are NOT equal!")
} else {
    print("Both Like Count & Comment Count is 5!")
}

if (likeCount == 5 || commentCount == 5) {
    print("Like Count or Comment Count is 5.")
} else {
    print("Neither Like count or Comment count is 5")
}

if likeCount > 5 {
    print("Like Count is greater than 5.")
} else if likeCount < 5 {
    print("Like Count is less than 5.")
} else if likeCount == 5 {
    print("Like Count is equal to 5.")
}

if (likeCount || commentCount) >= 5 {
    print("You're doing well.")
} else {
    print("You need to do better.")
}
