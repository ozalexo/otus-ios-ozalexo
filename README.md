
# Some info

   * If we are using extension with string description, than in playground console output may be doubled due to playground's sidepanel output.
   * Changed order of list items: now the order is the same as when adding
   * Fixed some errors with optionals, like this:
      ```

      error: Types.playground:66:15: error: value of optional type 'Node<K, V>?' must be unwrapped
      to refer to member 'next' of wrapped base type 'Node<K, V>'
            while next.next != nil {
                  ^
      ```