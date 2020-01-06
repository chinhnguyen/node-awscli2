FROM node:12.13.1
LABEL maintainer="chinh@willbe.vn" 
LABEL nodeVersion="12.13.1" 
LABEL awscliVersion="2.0.0" 
LABEL version="1.0.0"

# https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux-mac.html
RUN curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

RUN aws2 --version
RUN npm --version