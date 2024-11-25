FROM eclipse-temurin:17-jre-jammy
WORKDIR /opt

RUN apt-get update && apt-get install -y wget unzip \
    && wget "https://github.com/GumTreeDiff/gumtree/releases/download/v4.0.0-beta2/gumtree-4.0.0-beta2.zip" \
    && unzip "gumtree-4.0.0-beta2.zip" \
    && mv "gumtree-4.0.0-beta2" "gumtree" \
    && rm gumtree-4.0.0-beta2.zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV PATH=$PATH:/opt/gumtree/bin
WORKDIR /works
EXPOSE 4567