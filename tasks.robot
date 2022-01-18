*** Settings ***
Documentation     Reading secrets from the vault.
Library           RPA.Robocorp.Vault
Variables         variables.py

*** Tasks ***
Get and log the value of the vault secrets using the Get Secret keyword
    ${secret}=    Get Secret    credentials
    # Note: In real robots, you should not print secrets to the log.
    # This is just for demonstration purposes. :)
    Log    ${secret}[username]
    Log    ${secret}[password]

*** Tasks ***
Get and log the value of the vault secrets using the imported variables file
    # Note: In real robots, you should not print secrets to the log.
    # This is just for demonstration purposes. :)
    # This works because we are importing the `variables.py` file:
    Log    ${USER_NAME}
    Log    ${PASSWORD}
