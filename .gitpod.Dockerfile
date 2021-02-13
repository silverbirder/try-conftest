FROM gitpod/workspace-full

RUN brew install terraform && \
    # ↓ https://www.conftest.dev/install/
    brew tap instrumenta/instrumenta && \
    brew install conftest