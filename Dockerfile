FROM rtfpessoa/ubuntu-jdk8
WORKDIR /home/ubuntu
# Requirements
RUN apt-get update && apt-get install -y \
	wget \
	gconf2 \
	libnotify4 \
	libnss3 \
	libappindicator1 \
	libxss1 \
	libasound2
# ToS
RUN TEMP_DIR="/tmp/thinkorswim"
RUN wget -O "${TEMP_DIR}/thinkorswim_installer.sh" 'https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.sh'
RUN chmod +x "$TEMP_DIR/thinkorswim_installer.sh"
RUN sh -c 'echo "1\ro\r1\r1\r1\r\ry\rn\ry\r" | ${TEMP_DIR}/thinkorswim_installer.sh'
RUN "/usr/local/thinkorswim/thinkorswim"
CMD "/bin/bash"