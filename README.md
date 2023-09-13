# Valve_Control

A setup script for initiating a streamlined environment for running Valve Index VR headset as a standalone screen and directional controller on a Linux Mint system. The headset will be used for games streamed from a separate Windows desktop through Steam's game streaming functionality.

## Prerequisites

Before you begin, ensure that you have met the following requirements:

- You have a Linux Mint system with administrative (sudo) privileges.
- You have a Valve Index VR headset.
- You have a stable internet connection to download necessary software and updates.
- Git is installed on your system.

## Installation

To install Valve_Control, follow these steps:

1. Clone this repository to your local machine:
   
    ```sh
    git clone https://github.com/jmwelshV2/Valve_Control.git
    ```

2. Navigate to the directory:

    ```sh
    cd Valve_Control
    ```

3. Make the `vc-setup.sh` script executable:

    ```sh
    chmod +x vc-setup.sh
    ```

4. Run the script with sudo privileges:

    ```sh
    sudo ./vc-setup.sh
    ```

## Usage

After running the `vc-setup.sh` script, reboot your system to apply all the changes.

Upon reboot, your Valve Index VR headset will function as a standalone screen and directional controller, allowing you to use head movements to control in-game camera movements. This setup is optimized for Steam games streamed from a separate Windows desktop.

### Calibration and Sensitivity

After the installation, you would need to calibrate the sensitivity to match in-game camera movements with your head movements. This feature will be developed in the next iterations of the project.

## Support

If you encounter any bugs or issues, kindly open an issue [here](https://github.com/YOUR_USERNAME/Valve_Control/issues).

## Roadmap

This project is under development. Future updates aim to provide more features and a smoother experience.

## Contributing

To contribute to Valve_Control, follow these steps:

1. Fork this repository.
2. Create a branch: `git checkout -b <branch_name>`.
3. Make your changes and commit them: `git commit -m '<commit_message>'`.
4. Push to the original branch: `git push origin <project_name>/<location>`.
5. Create the pull request.

## License

This project uses the following license: [NAME OF LICENSE](LICENSE).

## Contact

If you want to contact the maintainer, you can reach out at [EMAIL].

## Credits

This project is developed by [YOUR_NAME/YOUR_TEAM_NAME].
