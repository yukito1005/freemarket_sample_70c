frequire 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def index
  end

  def show
    @category = Category.all.order("id ASC").limit(13)
  end

end
