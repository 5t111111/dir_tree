require 'minitest_helper'

class TestDirTree < MiniTest::Unit::TestCase

  def setup
    @test_path = File.expand_path(File.dirname(__FILE__))
  end

  def test_that_it_has_a_version_number
    refute_nil ::DirTree::VERSION
  end

  def test_it_returns_hash_representing_diretcory_tree
    # ├── root
    # │   ├── dir_1
    # │   │   ├── file_in_dir_1_1
    # │   │   └── file_in_dir_1_2
    # │   ├── dir_2
    # │   │   ├── dir_3
    # │   │   │   ├── file_in_dir_3_1
    # │   │   │   └── file_in_dir_3_2
    # │   │   ├── file_in_dir_2_1
    # │   │   └── file_in_dir_2_2
    # │   ├── file_in_root_1
    # │   └── file_in_root_2
    expected = { File.join(@test_path, 'root') =>
                      { "dir_1" =>
                        { "file_in_dir_1_1" => {},
                          "file_in_dir_1_2" => {}},
                        "dir_2" =>
                          { "dir_3" =>
                            { "file_in_dir_3_1" => {},
                              "file_in_dir_3_2" => {}},
                            "file_in_dir_2_1" => {},
                            "file_in_dir_2_2" => {}},
                        "file_in_root_1" => {},
                        "file_in_root_2" => {}}}
    actual = DirTree.hash_tree(File.join(@test_path, 'root'))
    assert_equal expected, actual
  end
end
