class Item < ApplicationRecord
	enum status: [0, 1, 2]
end

# 0 -> isAEditable
# 1 -> isClaimable
# 2 -> isClaimed