# tz-syberry
Top 5 file formats in `$folder_name` folder:

This is custom rails task that takes a folder path as an input and outputs the 5 most frequent file formats in
descending order.

The task should take a folder as an argument.

# Usage

Run command: `rails custom_command:top_five[your_path]` where your_path path to folder

# Example

Here is the content of test_data:

```
test_data
  secret_file
    img_1.png
    img_2.png
    img_3.png
  tmp
    1.txt
    1.txt
    count.m
  data.txt
  README.md
  task_1.rb
  task_2.rb
  tz.docx
```

Here is the example of the task running:

```
$ rails custom_command:top_five[test_data]
Top 5 file formats in test_data folder:
.png     3
.txt     3
.rb      2
.m       1
.md      1
```

# Where is my code

Open: `lib/tasks/tz_syberry.rake`