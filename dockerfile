FROM python
WORKDIR /app
COPY paragraphs.txt /app/
COPY cloudassignmet.py /app/ 
RUN pip install nltk
RUN python -m nltk.downloader stopwords punkt
CMD [ "python","cloudassignmet.py" ]