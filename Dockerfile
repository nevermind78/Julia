# Use the official Julia Docker image as a base
FROM julia:latest

# Set the working directory
WORKDIR /app

# Copy the Project.toml file into the container
COPY Project.toml .

# Install the Julia dependencies
RUN julia -e 'using Pkg; Pkg.instantiate()'

# Install Jupyter notebook and IJulia package
RUN julia -e 'using Pkg; Pkg.add("IJulia")'

# Expose the notebook port
EXPOSE 8888

# Start Jupyter notebook
CMD ["julia", "-e", "using IJulia; notebook()"]
