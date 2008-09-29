ActionView::Helpers::TagHelper.send(:include, AutoClassInputTags)

# This is needed, even though InstanceTag includes TagHelper, it overrides the
# method in such a way that it no longer uses TagHelper#tag.
ActionView::Helpers::InstanceTag.send(:include, AutoClassInputTags)
