#TODO:  Build HTML tags around  content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
def tag(tag_name, attr = nil)

  if attr !=  nil
  "<#{tag_name} #{attr[0]}='#{attr[1]}'>#{yield}</#{tag_name}>"
  else
  "<#{tag_name}>#{yield}</#{tag_name}>"
  end

end


#TODO:  Return time taken to execute the given block
def timer_for
  starttime = Time.now
  yield
  endtime = Time.now - starttime
end


#TODO:  Simply execute the given block on element
def transform(element)
  yield (element)
end
