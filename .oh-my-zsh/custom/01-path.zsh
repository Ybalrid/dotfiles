#local installation of nsight graphcis :
export PATH=$PATH:/usr/local/NVIDIA-Nsight-Graphics/host/linux-desktop-nomad-x64/

#using esp-idf from AUR
export IDF_PATH=$HOME/esp/esp-idf
alias get_esp32='export PATH="$HOME/esp/xtensa-esp32-elf/bin:$PATH" && ${IDF_PATH}/add_path.sh && echo configured paths for ESP32 developement'

