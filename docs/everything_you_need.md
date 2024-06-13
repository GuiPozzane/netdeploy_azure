# Everything You Need

This document provides a comprehensive guide on setting up the necessary tools and accounts to start working on the project. Follow these steps to download Visual Studio, create GitHub and Azure accounts, and take advantage of Azure's $200 credit for testing purposes. Additionally, you will learn how to create new APIs using .NET 8 and set up Docker.

## Downloading Visual Studio

1. **Visit the Visual Studio website**: Go to the [Visual Studio Download Page](https://visualstudio.microsoft.com/downloads/).
2. **Select the version**: Choose the version of Visual Studio that suits your needs (e.g., Community, Professional, Enterprise). The Community edition is free and suitable for most development tasks.
3. **Download the installer**: Click on the download button for the selected version to download the Visual Studio installer.
4. **Run the installer**: Once downloaded, run the installer and follow the on-screen instructions to install Visual Studio on your computer.
5. **Select workloads**: During installation, you will be prompted to select workloads. Ensure you select the following workloads:
   - ".NET desktop development"
   - "ASP.NET and web development"
   - "Azure development"
   - "Container Development"

## Creating a GitHub Account

1. **Visit the GitHub website**: Go to the [GitHub Sign Up Page](https://github.com/join).
2. **Fill out the registration form**: Provide a username, email address, and password. 
3. **Complete the CAPTCHA**: Verify that you are not a robot by completing the CAPTCHA.
4. **Verify your email**: GitHub will send a verification email to the address you provided. Open the email and click the verification link to activate your account.
5. **Set up your profile**: Once verified, you can customize your GitHub profile with additional information and a profile picture.

## Creating an Azure Account and Using $200 Credit

1. **Visit the Azure website**: Go to the [Azure Free Account Page](https://azure.microsoft.com/en-us/free/).
2. **Click "Start for free"**: Click the "Start for free" button to begin the registration process.
3. **Sign in or create a Microsoft account**: If you already have a Microsoft account, sign in. If not, create a new Microsoft account.
4. **Fill out the registration form**: Provide the required information, including your name, email, phone number, and address. 
5. **Verify your identity**: Microsoft will require you to verify your identity using a credit card. Note that you won't be charged unless you exceed the free credit or switch to a paid plan.
6. **Activate your $200 credit**: Once your identity is verified, your Azure account will be created, and you will receive $200 in credit to use for the first 30 days.
7. **Explore the Azure portal**: Log in to the [Azure Portal](https://portal.azure.com/) and start exploring the available services and resources. Use the $200 credit to test and deploy your sample application.

## Creating New APIs Using .NET 8 in Visual Studio

1. **Open Visual Studio**: Launch Visual Studio.
2. **Create a new project**: Click on "Create a new project" from the start window.
3. **Select project template**: Choose "ASP.NET Core Web API" and click "Next".
4. **Configure your project**: 
   - Name your project.
   - Choose a location to save the project.
   - Click "Next".
5. **Set up the API**:
   - Select ".NET 8" as the framework.
   - Click "Create".
6. **Build your API**: Use the provided templates and tools in Visual Studio to build your API. You can add controllers, models, and other necessary components.

## Setting Up Docker

1. **Download and install Docker**: 
   - Visit the [Docker website](https://www.docker.com/products/docker-desktop).
   - Download Docker Desktop for your operating system.
   - Run the installer and follow the on-screen instructions to install Docker.
2. **Verify Docker installation**: 
   - Open a terminal or command prompt.
   - Run the command `docker --version` to ensure Docker is installed correctly.
3. **Add Docker support to your project**: 
   - In Visual Studio, right-click on your project in the Solution Explorer.
   - Select "Add" > "Docker Support".
   - Choose the target OS (Linux or Windows) and click "OK". Visual Studio will add the necessary Docker files to your project.
4. **Build and run your Docker container**: 
   - Open a terminal or command prompt in your project directory.
   - Use the command `docker build -t your-project-name .` to build the Docker image.
   - Use the command `docker run -d -p 8080:80 your-project-name` to run the container.

By following these steps, you will have all the necessary tools and accounts set up to begin your project, create APIs using .NET 8, and work with Docker. If you encounter any issues or have any questions, feel free to consult the respective documentation for Visual Studio, GitHub, Azure, and Docker.
