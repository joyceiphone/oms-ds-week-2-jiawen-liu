#Get the latest base image for python
FROM python:latest
WORKDIR /server/
ADD sender.py /server/
#Expose port 123456 in the container
EXPOSE 12345
CMD ["python3", "sender.py"]