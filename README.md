# marva2alma [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/jimfhahn/marva2alma/main?filepath=marva2alma.ipynb)
This notebook demonstrates how you can use a work and instance from the Marva editor to post as a concise bounded BIBFRAME description to Alma

### Before running, add a .env file to the root directory with the following:
```
ALMA_API_KEY="apikey"
ALMA_URI_REGION="url"
```
Region details and API key generation for your Alma system can be found here: [Alma Developer Network](https://developers.exlibrisgroup.com/alma/apis). Consider using Alma Sandbox API for testing. The API key should have read/write permissions for bib operations.
### Region info:

| Region        | URL                                      |
|---------------|------------------------------------------|
| North America | https://api-na.hosted.exlibrisgroup.com  |
| Europe        | https://api-eu.hosted.exlibrisgroup.com  |
| Asia Pacific  | https://api-ap.hosted.exlibrisgroup.com  |
| Canada        | https://api-ca.hosted.exlibrisgroup.com  |
| China         | https://api-cn.hosted.exlibrisgroup.com.cn |


