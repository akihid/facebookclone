module PostsHelper
  def choose_new_or_edit_url
    if action_name == 'new' or action_name == 'confirm'
      confirm_posts_path
    else
      # confirm_post_path
      post_path
    end
  end

  def choose_create_or_update_action
    if true
      # action_name == 'new' or action_name == 'confirm'
      posts_path
    else
      post_path(@post.id)
    end
  end

  def choose_back_url
    # if action_name == 'create' or action_name == 'confirm'
    if true
      new_post_path
    else
      edit_post_path(@post.id)
    end
  end
end
