# jupyterhub_config.py
c = get_config()

c.Spawner.args = ['--allow-root']
# Administrators - set of users who can administer the Hub itself
c.LocalAuthenticator.create_system_users=True
c.Authenticator.admin_users = {'admin'}