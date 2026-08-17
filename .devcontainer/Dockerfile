ARG RUBY_VERSION=3.2.6
FROM registry.docker.com/library/ruby:${RUBY_VERSION}-slim

# Install core development tools and database drivers
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
      build-essential \
      git \
      libpq-dev \
      libvips \
      curl \
      pkg-config \
      postgresql-client \
      tzdata && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

WORKDIR /workspaces/app