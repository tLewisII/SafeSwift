## SafeSwift, because "subscripting considered harmful".

SafeSwift is a library of safe functions that replace some standard Swift functions and features, like Array subscripting and forced unwrapping of Optional types, with safe versions that __will not__ crash your app at runtime.

## Functions and Types
Array Type Signatures

```swift
func safeIndex(i:Int) -> T?
func safeHead() -> T?
func safeTail() -> T[]?
func safeLast() -> T?
func safeRange(r:Range<Int>) -> T[]?
```
Optional Type Signatures

```swift
func safeUnwrap<T>(op:Optional<T>, defaultVal:T) -> T
```

Other stuff will probably be added when I find it. Pull requests and issues welcome.

## License
The MIT License (MIT)
Copyright (c) 2014 Terry Lewis II

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
<br><br>
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
<br><br>
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
