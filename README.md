# DirTree

DirTree converts directory tree structure into a hash.

```text
root
├── dir_1
│   ├── file_in_dir_1_1
│   └── file_in_dir_1_2
├── dir_2
│   ├── dir_3
│   │   ├── file_in_dir_3_1
│   │   └── file_in_dir_3_2
│   ├── file_in_dir_2_1
│   └── file_in_dir_2_2
├── file_in_root_1
└── file_in_root_2
```

```ruby
DirTree::hash_tree("/root")
```

```ruby
{
    "/root" => {
                 "dir_1" => {
            "file_in_dir_1_1" => nil,
            "file_in_dir_1_2" => nil
        },
                 "dir_2" => {
                      "dir_3" => {
                "file_in_dir_3_1" => nil,
                "file_in_dir_3_2" => nil
            },
            "file_in_dir_2_1" => nil,
            "file_in_dir_2_2" => nil
        },
        "file_in_root_1" => nil,
        "file_in_root_2" => nil
    }
}
```

Each entry is represented as a key of hash. Its value is hash for children if it is a directory, its value is `nil` if it is a file instead. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dir_tree'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dir_tree

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/dir_tree/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
