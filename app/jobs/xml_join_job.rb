class XmlJoinJob < ApplicationJob
  queue_as :default

  def perform(xml)
    xml.execute_joiner
  end
end
