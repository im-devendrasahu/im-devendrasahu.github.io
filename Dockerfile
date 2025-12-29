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

LABEL "com.devendra.name"="portfolio-website"
LABEL description="portfolio website of Devendra Sahu"

WORKDIR /usr/src/app

# Create non-root user
# RUN addgroup -g 1000 jekyll && \
#     adduser -D -u 1000 -G jekyll jekyll
# UIDs 0-999 are reserved for system users and services (like root, daemon, www-data, etc.)
# UID 1000 is the standard first user ID assigned to regular user accounts in Linux
# This follows the Linux Standard Base (LSB) convention
# no need to use adduser command, we can just use USER directive with UID/GID

# Copy only gems from builder
COPY --from=builder /usr/local/bundle /usr/local/bundle

# Copy site files
COPY . .

# Set proper ownership
# RUN chown -R jekyll:jekyll /usr/src/app
RUN apk add --no-cache curl && \
    chown -R 1000:1000 /usr/src/app
    
# Switch to non-root user
# USER jekyll
USER 1000:1000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]

HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost:4000/ || exit 1
# it is useful only if not used in k8s, otherwise k8s will handle the healthchecks itself by livenessProbe/readinessProbe
EXPOSE 4000