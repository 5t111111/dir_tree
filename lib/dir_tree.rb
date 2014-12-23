require "dir_tree/version"

#
# Convert directory tree structure into a hash
#
# == Parameters:
# path::
#   Root directory path for a hash
# name::
#   Do not specify explicitly as it is used for recursion
#
# == Returns:
# A hash representing the directory tree structure
#
module DirTree
  def self.hash_tree(path, name = nil)
    key = name || path
    data = {}
    data[key] = children = {}
    Dir.foreach(path) do |entry|
      next if entry == '..' || entry == '.'
      full_path = File.join(path, entry)
      if File.directory?(full_path)
        children.update(hash_tree(full_path, entry))
      else
        children[entry] = nil
      end
    end
    data
  end
end
