require 'test_helper'

class PresponsableTest < ActiveSupport::TestCase
  test "debe tener nombre" do
 		p = Presponsable.new
		assert_not p.save, "salvar presponsable sin nombre"
  end
end
