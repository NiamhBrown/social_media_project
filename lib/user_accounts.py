class UserAccount:
    def __init__(self,id, email_adress, username):
        self.id = id
        self.email_adress = email_adress
        self.username = username
    
    def __eq__(self,other):
        return self.__dict__ == other.__dict__
    
    def __repr__(self):
        return f"UserAccount({self.id}, {self.email_adress}, {self.username})"