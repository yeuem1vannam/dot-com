RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      only ['Post']
    end
    export
    bulk_delete do
      except ['Message']
    end
    show
    edit do
      except ['Message']
    end
    delete do
      except ['Message']
    end
    show_in_app do
      only ['Post']
    end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  config.model 'Post' do
    list do
      exclude_fields :created_at, :body, :html_body
      scopes [:active, :inactive]
      # exclude_fields :body
      # exclude_fields :html_body
    end

    edit do
      exclude_fields :html_body
      # For RailsAdmin >= 0.5.0
      field :title, :string do
        help "Length up to 255"
      end
      field :body, :epic_editor do
        help "Use markdown"
      end
      field :publicity, :boolean do
        help "Public this post?"
      end
    end
  end

  config.model 'Message' do
    list do
      exclude_fields :updated_at
    end
  end
end
