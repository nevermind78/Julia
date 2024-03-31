FROM julia:1.6

# Install additional Julia packages
RUN julia -e 'using Pkg; Pkg.add(["DataFrames", "Plots"])'

# Set working directory
WORKDIR /app

# Copy the contents of your Binder repository into the container
COPY . .

# Set the entrypoint command to start Julia
CMD ["julia"]
