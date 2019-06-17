FROM meteor/galaxy-app:20180928T184945Z_bf7dafa_yoga-layout


# Install additional dependencies (adds to Galaxy's default docker image @ meteor/galaxy-app)
RUN apt-get update && \
    apt-get install -y xvfb x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic x11-apps \
        clang libdbus-1-dev libgtk2.0-dev libnotify-dev libgnome-keyring-dev libgconf2-dev libasound2-dev \
        libcap-dev libcups2-dev libxtst-dev libxss1 libnss3-dev gcc-multilib g++-multilib && \
    rm -rf /var/lib/apt/lists/*
