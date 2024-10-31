import requests
from bs4 import BeautifulSoup

# Function to scrape article titles from a website
def scrape_titles(url):
    try:
        # Send a GET request to the website
        response = requests.get(url)
        response.raise_for_status()  # Raise an error for bad responses
        
        # Parse the HTML content
        soup = BeautifulSoup(response.content, 'html.parser')
        
        # Find all article titles (adjust the selector as needed)
        titles = soup.find_all('h2', class_='entry-title')  # Example selector
        
        # Extract and print titles
        for title in titles:
            print(title.get_text(strip=True))
    
    except requests.exceptions.RequestException as e:
        print(f"Error fetching data from {url}: {e}")

# URL of the website you want to scrape
url = 'https://example.com/news'  # Replace with the actual URL

# Run the scraper
scrape_titles(url)
