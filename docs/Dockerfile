FROM ruby:3.3.10-alpine3.23 AS builder

# Set environment variables
ENV LANG=C.UTF-8

# Install dependencies
RUN apk update -qq && apk add --no-cache \
  build-base \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /var/cache/apk/*

# Set working directory
WORKDIR /usr/src/app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install gems
RUN gem install bundler:4.0.2 && bundle install --no-cache



# Runtime stage
FROM ruby:3.3.10-alpine3.23

ENV LANG=C.UTF-8

WORKDIR /usr/src/app

# Copy only gems from builder
COPY --from=builder /usr/local/bundle /usr/local/bundle

# Copy site files
COPY . .

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]

# HEALTHCHECK --interval=30s --timeout=3s \
#   CMD curl -f http://localhost/ || exit 1
# USER
EXPOSE 4000