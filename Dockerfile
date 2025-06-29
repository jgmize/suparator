FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y curl postgresql-client
RUN curl -LO https://github.com/supabase/cli/releases/download/v2.26.8/supabase_2.26.8_linux_amd64.deb && \
    dpkg -i supabase_2.26.8_linux_amd64.deb
