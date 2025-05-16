import os
import platform
import subprocess
import logging

logging.basicConfig(filename="logs/updater.log", level=logging.INFO)

def run_command(command, shell=False):
    try:
        result = subprocess.run(command, shell=shell, capture_output=True, text=True)
        logging.info(result.stdout)
        if result.stderr:
            logging.error(result.stderr)
        return result.returncode
    except Exception as e:
        logging.exception(f"Failed to run command: {command}")
        return 1

def main():
    system = platform.system()
    logging.info(f"Detected OS: {system}")

    if system == "Linux":
        run_command(["bash", "scripts/update_linux.sh"])
    elif system == "Windows":
        run_command(["powershell", "-ExecutionPolicy", "Bypass", "-File", "scripts/update_windows.ps1"])
    else:
        logging.error("Unsupported OS.")

if __name__ == "__main__":
    main()