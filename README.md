# system_updater

## 🛠️ Cross-Platform System Updater Tool

A Python-based controller that automates system updates on both **Windows** and **Linux** environments (including desktops and servers) using platform-specific scripts written in **Bash** and **PowerShell**.

---

## 📦 Features

- ✅ Supports Debian, Ubuntu, CentOS, Red Hat, Arch Linux
- ✅ Automates Windows Updates using PowerShell
- ✅ Unified Python controller for cross-platform execution
- ✅ Logs output for auditing and debugging
- ✅ Easily extendable and customizable

---

## 🚀 How It Works

The `updater.py` script detects the host operating system and runs the corresponding update script:

- On **Linux** → Executes `update_linux.sh`
- On **Windows** → Executes `update_windows.ps1`

Each script uses the native package managers (APT, YUM, Pacman) or the Windows Update module.

---

## 🗂️ Project Structure

```
system_updater/
├── updater.py                 # Main Python controller script
├── scripts/
│   ├── update_linux.sh        # Bash script for Linux updates
│   └── update_windows.ps1     # PowerShell script for Windows updates
├── logs/
│   └── updater.log            # Log file for updates
└── config/
    └── updater_config.json    # (Optional for future customization)
```

---

## ⚙️ Requirements

### Python
- Python 3.6+
- Cross-platform: Works on Windows and Linux

Install Python dependencies (if needed):

```bash
pip install -r requirements.txt
```

### Linux
- Bash shell
- Sudo privileges

### Windows
- PowerShell 5.1+
- Administrator privileges
- Internet access to install PSWindowsUpdate if not already installed

---

## 🛠️ Usage

### 1. Clone the Repository

```bash
git clone https://github.com/ltsali8220/system_updater.git
cd system_updater
```

### 2. Run the Updater

```bash
python updater.py
```

✅ The script will automatically detect the OS and execute the correct update procedure.

---

## 📄 Example Output

Check the log file:

```bash
cat logs/updater.log
```

---

## 🔐 Permissions

Make sure scripts are executable and run with appropriate privileges.

### Linux:

```bash
chmod +x scripts/update_linux.sh
sudo python updater.py
```

### Windows (Run as Administrator):

```powershell
python updater.py
```

---

## 🔧 Future Improvements (Planned)

- Configurable scheduling (cron / Task Scheduler)
- Remote update capabilities via SSH/WinRM
- GUI interface (Tkinter or web-based)
- Email notifications or reporting

---

## 🤝 Contributing

Pull requests and suggestions are welcome! Please open an issue first to discuss changes.

---

## 📜 License

MIT License. See LICENSE for details.

---

## 👨‍💻 Author

Developed by Salivan Veerasekaran  
GitHub Repository: [https://github.com/ltsali8220/system_updater](https://github.com/ltsali8220/system_updater)
