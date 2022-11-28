class AdminContentsController < InheritedResources::Base

  private

    def admin_content_params
      params.require(:admin_content).permit(:header, :content)
    end

end
