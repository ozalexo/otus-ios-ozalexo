

# Initial list of errors:
```
Playground execution failed:

error: Types.playground:66:15: error: value of optional type 'Node<K, V>?' must be unwrapped to refer to member 'next' of wrapped base type 'Node<K, V>'
        while next.next != nil {
              ^

Types.playground:66:15: note: chain the optional using '?' to access member 'next' only for non-'nil' base values
        while next.next != nil {
              ^
                  ?

Types.playground:66:15: note: force-unwrap using '!' to abort execution if the optional value contains 'nil'
        while next.next != nil {
              ^
                  !

error: Types.playground:67:30: error: value of optional type 'Node<K, V>?' must be unwrapped to refer to member 'next' of wrapped base type 'Node<K, V>'
            if let nodeKey = next.next?.key {
                             ^

Types.playground:67:30: note: chain the optional using '?' to access member 'next' only for non-'nil' base values
            if let nodeKey = next.next?.key {
                             ^
                                 ?

Types.playground:67:30: note: force-unwrap using '!' to abort execution if the optional value contains 'nil'
            if let nodeKey = next.next?.key {
                             ^
                                 !

warning: Types.playground:88:19: warning: string interpolation produces a debug description for an optional value; did you mean to make this explicit?
        return "\(key): \(value)"
                  ^~~

Types.playground:88:19: note: use 'String(describing:)' to silence this warning
        return "\(key): \(value)"
                  ^~~
                  String(describing:  )

Types.playground:88:19: note: provide a default value to avoid this warning
        return "\(key): \(value)"
                  ^~~
                      ?? <#default value#>

warning: Types.playground:88:27: warning: string interpolation produces a debug description for an optional value; did you mean to make this explicit?
        return "\(key): \(value)"
                          ^~~~~

Types.playground:88:27: note: use 'String(describing:)' to silence this warning
        return "\(key): \(value)"
                          ^~~~~
                          String(describing:  )

Types.playground:88:27: note: provide a default value to avoid this warning
        return "\(key): \(value)"
                          ^~~~~
                                ?? <#default value#>
```