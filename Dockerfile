FROM ubuntu:wily

# Add build script
ADD do.sh /opt/do.sh
RUN [ "chmod", "+x", "/opt/do.sh" ]

# Run the build script
CMD [ "/opt/do.sh" ]
