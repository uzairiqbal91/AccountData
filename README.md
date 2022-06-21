# AccountData


Download and install two extensions in VS Code from the Extension Marketplace:

Docker (https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
Remote Development (https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

| **Open Docker Container**      | **Open Folder In Container**  
|------------|-------------| 
|  <img src="https://github.com/uzairiqbal91/AccountData/blob/master/workspace/AccountData/assets/images/screenshot/14.png" width="250"> |  <img src="https://github.com/uzairiqbal91/AccountData/blob/master/workspace/AccountData/assets/images/screenshot/15.png" width="250"> |  

After setup might face the problem of token expire or incorrect token problem 

 | **When Token Not Correct**      | **When Toekn Correct - Result**  
|------------|-------------| 
|  <img src="https://github.com/uzairiqbal91/AccountData/blob/master/workspace/AccountData/assets/images/screenshot/1.png" width="250"> |  <img src="https://github.com/uzairiqbal91/AccountData/blob/master/workspace/AccountData/assets/images/screenshot/2.png" width="250"> |  

To resolve this issue , you should get token by authorization process 
select OAuth 2.0
Callback URL : http://localhost
Auth URL : input Auth Url that given by Microsoft 365
Client ID : input Client ID that given by Microsoft 365

than get new access token 
and replace in TOKEN Consant -> app_resource/app_constants
for getting images you should also repleace the APPURI -> app_resource/app_constants

| **OUTH2.0 Configuration For Token**      | **Updated Token**  
|------------|-------------| 
|  <img src="https://github.com/uzairiqbal91/AccountData/blob/master/workspace/AccountData/assets/images/screenshot/12.png" width="250"> |  <img src="https://github.com/uzairiqbal91/AccountData/blob/master/workspace/AccountData/assets/images/screenshot/13.png" width="250"> |  

| **State Or Provice Drop Down**      | **State Code Drop Down**  
|------------|-------------| 
|  <img src="https://github.com/uzairiqbal91/AccountData/blob/master/workspace/AccountData/assets/images/screenshot/4.png" width="250"> |  <img src="https://github.com/uzairiqbal91/AccountData/blob/master/workspace/AccountData/assets/images/screenshot/5.png" width="250"> |  

| **Searched List**      | **No Record Found**  
|------------|-------------| 
|  <img src="https://github.com/uzairiqbal91/AccountData/blob/master/workspace/AccountData/assets/images/screenshot/7.png" width="250"> |  <img src="https://github.com/uzairiqbal91/AccountData/blob/master/workspace/AccountData/assets/images/screenshot/8.png" width="250"> |  

| **No Internet Found**      | **Skeleton Loader With Filter Loading**  
|------------|-------------| 
|  <img src="https://github.com/uzairiqbal91/AccountData/blob/master/workspace/AccountData/assets/images/screenshot/9.png" width="250"> |  <img src="https://github.com/uzairiqbal91/AccountData/blob/master/workspace/AccountData/assets/images/screenshot/11.png" width="250"> |  

<img src="https://github.com/uzairiqbal91/AccountData/blob/master/workspace/AccountData/assets/images/screenshot/16.png" width="250"> 
