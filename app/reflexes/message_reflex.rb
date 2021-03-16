# frozen_string_literal: true

class MessageReflex < ApplicationReflex
  before_reflex { controller }
  def update
    @comment = element.value
    @message = Message.find(element.dataset[:id])
    @message.update(comment: element.value)
  end
end
