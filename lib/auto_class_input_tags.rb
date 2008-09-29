module AutoClassInputTags

  def self.included(base)
    base.alias_method_chain :tag, :input_auto_classing
  end

  def tag_with_input_auto_classing(name, options = nil, *args)
    # We want to add a class to all <input /> fields, equal to the type of input
    if name.to_s == 'input'
      classes = (options['class'] || '').split
      classes |= [options.with_indifferent_access[:type]]
      options['class'] = classes.join(' ')
    end
    # NB: TagHelper#tag and InstanceTag#tag have different arities
    tag_without_input_auto_classing(name, options, *args) 
  end

end
