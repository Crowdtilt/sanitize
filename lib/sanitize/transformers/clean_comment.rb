# encoding: utf-8

class Sanitize; module Transformers

  CleanComment = lambda do |env|
    return if env[:is_whitelisted]
    env[:node].unlink if env[:node].comment?
  end

end; end
