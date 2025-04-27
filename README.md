# Hibernate Wings Installer
🔥 Automatically fixes Pterodactyl nodes getting overloaded with a simple script!
🛡 Made by Ninja

# Features
Auto-installs HibernateX to optimize your Pterodactyl nodes.

Monitors all server volumes and patches them automatically.

Runs completely in the background.

Light, fast, and simple.

# Installation

bash <(curl -s https://raw.githubusercontent.com/next-ninja/Hibernate-wings/refs/heads/main/install.sh)

✅ That's it! Hibernate will automatically run and protect your nodes.

# How it works
Downloads run.sh and HibernateX.jar.

Copies HibernateX automatically into all Pterodactyl server plugin folders.

Runs run.sh in the background using nohup.

The run.sh script monitors every server under /var/lib/pterodactyl/volumes/
If it finds a server missing HibernateX.jar, it fixes it in real-time.

# Requirements
Linux server

# Root access

Pterodactyl Panel (wings installed)

# Credits
Script and development by Ninja

Special thanks to the open-source community ❤️

# License
This project is licensed under the MIT License.
Feel free to modify and share!

# Example Output
When you run install.sh, you'll see:

rust
Copy
Edit
🔥 Installing Hibernate for Pterodactyl Wings...
➡️  Fixing Pterodactyl Nodes Overload in one script!
✅ Hibernation for Pterodactyl Wings has been installed and started!
# Notes
If you reboot the server, you must manually rerun run.sh, unless you add it as a service (systemd setup).

Future updates may include an auto-service installer!

# Coming soon
Auto systemd setup (hibernate.service)

# GUI installer (pretty CLI interface)

Would you also like me to create a systemd service installer too so that it auto-starts after reboot? 🚀 (Really easy to add, and super clean.)
If yes, I can prepare it for you too! 🔥
