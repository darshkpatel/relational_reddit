### 0.3.2
* Supports custom key encoder
* Added `InsensitiveHash#merge_recursive!`

### 0.3.0
* Now allowing underscores for spaces is by default on, and cannot be turned off.
* "Inherited insensitivity" had been a great source of confusion,
  as it stores transformed version of the given Array of Hash.
  From 0.3.0, Hash values and descendant Hashes are converted to be insensitive
  only on the initialization of InsensitiveHash.
  Refer to the following code
```ruby
  ih = {}.insensitive
  ih[:a] = { :b => :c }

  ih[:a]['B']           # nil

  # Initialize another InsensitiveHash
  ih2 = ih.insensitive
  ih2[:a]['B']           # :c
```

### 0.2.4
* Bug fix: Invalid `dup`, `clone` behavior
* :safe setting from `Hash#insensitive`

### 0.2.3 / 2012/02/18
* Key-clash detection made optional with `InsensitiveHash#safe=`
* Ruby 1.8 compatibility

### 0.2.2 / 2012/02/13
* :underscore option added
* `InsensitiveHash::KeyClashError` added for safer operations
* Bug fix: Preserve default/default_proc on merge/replace/insensitive
* Subtle behavioral change in `InsensitiveHash#replace` when called with an ordinary Hash

### 0.2.1 / 2012/02/10
* Bug fix: Insensitive `fetch`

### 0.2.0 / 2012/02/01
* Major rewrite
 * Constructor syntaxes have been changed to match those of standard Hash (not backward-compatible)
 * (Almost) Complete implementation of standard Hash spec.

### 0.1.0 / 2011/12/20
* Can opt-out of monkey-patching Hash with `require 'insensitive_hash/minimal'`

### 0.0.2-3 / 2011/10/28
* Removed duplicated code in the constructor
* More tests
