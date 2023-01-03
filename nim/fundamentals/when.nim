when system.hostOS == "windows":
  echo "Running on Windows!"

elif system.hostOS == "linux":
  echo "Running on Linux!"

elif system.hostOS == "macosx":
  echo "Running on Mac OS X!"

else:
  echo "Unknown operating system."