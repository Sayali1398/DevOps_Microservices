FROM python:3.7.3-stretch
WORKDIR /src
COPY . app.py /src/
## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt


## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python","app.py"]

