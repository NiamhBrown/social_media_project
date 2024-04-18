"""
test that a user account constructs, is formatted and equality methos works
"""
from lib.user_accounts import UserAccount

def test_user_account_construct():
    account = UserAccount(1, "Test Email", "Test username")
    assert account.id == 1
    assert account.email_adress == "Test Email"
    assert account.username == "Test username"

def test_repr_correctly():
    account = UserAccount(1, "Test Email", "Test username")
    assert str(account) == "UserAccount(1, Test Email, Test username)"

def test_accounts_are_equal():
    account1 = UserAccount(1, "Test Email", "Test username")
    account2 = UserAccount(1, "Test Email", "Test username")
    assert account1 == account2