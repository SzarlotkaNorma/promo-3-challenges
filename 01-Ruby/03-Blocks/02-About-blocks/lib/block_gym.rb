def tag(tag_name, attr = nil)
  #TODO:  Build HTML tags around  content given in the block
  #The method can be called with an optional HTML attribute inputted as [attr_name, attr_value

  if attr
    "<#{tag_name} #{attr[0]='attr[1]'} #{yield} "
  else
  "<#{tag_name}> #{yield} </#{tag_name}>"
  end

  tag("h1") {"Some Title"}
  tag("h1", ["id", "title"]) do
    "Some Title"
  end
end


def timer_for
  #TODO:  Return time taken to execute the given block
end

def transform(element)
  #TODO:  Simply execute the given block on element
end
