FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app



## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
COPY requirements.txt .
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
RUN pip install -r requirements.txt

## Step 2:
# Switched steps for faster builds
# Copy source code to working directory
COPY . .

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]

