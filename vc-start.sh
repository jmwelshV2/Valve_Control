echo "Individual components testing completed. Please check above for any errors."
sleep 2

# Ask the user if they want to proceed to the configuration steps
read -p "Would you like to proceed to the configuration steps? It is recommended to review the test results above before proceeding. (y/n): " PROCEED

if [[ "$PROCEED" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    # Configuration step for XRDesktop
    echo "Proceeding to XRDesktop configuration step..."
    sleep 1
    read -p "Would you like to create a new XRDesktop configuration, use the existing configuration, or skip this step? (new/use/skip): " XR_CONFIG
    case $XR_CONFIG in
        [Nn][Ee][Ww])
            echo "Creating a new XRDesktop configuration..."
            # (Here you would call the script or command to launch the XRDesktop configuration utility)
            ;;
        [Uu][Ss][Ee]|[Ss][Kk][Ii][Pp])
            echo "Using the existing XRDesktop configuration..."
            # (Here you would load the existing XRDesktop configuration)
            ;;
        *)
            echo "Invalid option chosen, skipping XRDesktop configuration..."
            ;;
    esac
    sleep 1

    # Configuration step for FreePIE
    echo "Proceeding to FreePIE configuration step..."
    sleep 1
    read -p "Would you like to create a new FreePIE configuration, use the existing configuration, or skip this step? (new/use/skip): " FP_CONFIG
    case $FP_CONFIG in
        [Nn][Ee][Ww])
            echo "Creating a new FreePIE configuration..."
            # (Here you would call the script or command to launch the FreePIE configuration utility)
            ;;
        [Uu][Ss][Ee]|[Ss][Kk][Ii][Pp])
            echo "Using the existing FreePIE configuration..."
            # (Here you would load the existing FreePIE configuration)
            ;;
        *)
            echo "Invalid option chosen, skipping FreePIE configuration..."
            ;;
    esac
else
    echo "Skipping the configuration steps and moving to the next part..."
    # (Here you would add a call to the script or function to proceed to the next part)
fi

sleep 1
