
FROM baseImage


# Get compress file from Website and copy to destination
ADD https://example.com/kevinkeren.tar.gz /destination/folder/

# Get from local and auto uncompres
ADD kevinkeren.tar.gz /destination/folder/

# Copy the all file to destination
COPY . /destination/folder/ 