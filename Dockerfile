FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y curl postgresql-client
RUN curl -LO https://github.com/supabase/cli/releases/download/v2.26.8/supabase_2.26.8_linux_amd64.deb && \
    dpkg -i supabase_2.26.8_linux_amd64.deb
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg \
    | gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" \
    | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    && apt-get update && apt-get install -y google-cloud-cli
