from RPA.Robocorp.Vault import Vault

secret = Vault().get_secret("credentials")
USER_NAME = secret["username"]
PASSWORD = secret["password"]
