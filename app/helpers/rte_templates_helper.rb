module RteTemplatesHelper

  def testhelper(pp=nil)
    "Hello, world! #{ pp unless pp.nil? }"
  end

end