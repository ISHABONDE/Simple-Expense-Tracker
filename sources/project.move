module MyModule::GroupExpenseTracker {

    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct to store group expenses
    struct Group has key, store {
        total_expenses: u64, // Total funds spent by the group
    }

    /// Create a new group expense tracker
    public fun create_group(owner: &signer) {
        assert!(!exists<Group>(signer::address_of(owner)), 1);

        let group = Group {
            total_expenses: 0,
        };
        move_to(owner, group);
    }

    /// Add an expense to the group's total
    public fun add_expense(member: &signer, group_owner: address, amount: u64) acquires Group {
        let group = borrow_global_mut<Group>(group_owner);

        // Transfer expense funds from member to group owner
        let payment = coin::withdraw<AptosCoin>(member, amount);
        coin::deposit<AptosCoin>(group_owner, payment);

        // Update the total group expenses
        group.total_expenses = group.total_expenses + amount;
    }
}
