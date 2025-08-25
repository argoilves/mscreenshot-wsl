#!/usr/bin/env python3
import argparse, time, os
from selenium import webdriver
from selenium.webdriver.chrome.service import Service

def take_screenshot(host, port, out_file):
    # loo kaust, kui seda ei ole
    os.makedirs(os.path.dirname(out_file), exist_ok=True)

    options = webdriver.ChromeOptions()
    options.add_argument("--headless=new")
    options.add_argument("--ignore-certificate-errors")
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-dev-shm-usage")
    options.add_argument("--disable-gpu")

    # Tee kindlaks, et Chrome ja ChromeDriver on õiged
    options.binary_location = "/usr/bin/chromium-browser"
    service = Service("/usr/bin/chromedriver")
    driver = webdriver.Chrome(service=service, options=options)
    driver.set_window_size(1024,768)

    url = f"http://{host}:{port}" if port != 443 else f"https://{host}:{port}"

    try:
        driver.get(url)
        time.sleep(3)
        driver.save_screenshot(out_file)
        print(f"[+] Screenshot saved to {out_file}")
    except Exception as e:
        print(f"[!] Error: {e}")
        exit(1)
    finally:
        driver.quit()

if __name__=="__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-u", required=True, help="Host/IP")
    parser.add_argument("-p", required=True, help="Port")
    parser.add_argument("-o", required=True, help="Output PNG file")
    args = parser.parse_args()
    take_screenshot(args.u, args.p, args.o)
