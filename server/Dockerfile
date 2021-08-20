#Get the latest base image for python
FROM python:latest
ADD sender.py /server/
WORKDIR /server/
#Expose port 123456 in the container
EXPOSE 12345
CMD ["python3", "sender.py"]