# Development Environment Setup

This guide will help you set up a complete development environment for the Naked Enterprise (NKD) project.

## Prerequisites

### Hardware Requirements

- Processor: 2.5 GHz or faster (quad-core or better recommended)
- RAM: 8 GB minimum (16 GB recommended)
- Disk Space: At least 10 GB of free space
- Display: 1280x1024 or higher resolution

### Software Requirements

1. **Operating System**
   - Windows 10/11 (64-bit)
   - Windows Server 2016/2019/2022

2. **Development Tools**
   - Visual Studio 2022 (Community, Professional, or Enterprise)
     - Workloads:
       - .NET desktop development
       - ASP.NET and web development
       - Azure development
       - Data storage and processing
   - .NET Framework 4.8 Developer Pack
   - Git for Windows
   - SQL Server Management Studio (SSMS) 18+
   - Node.js (LTS version)

3. **Database**
   - SQL Server 2019 Express/Developer/Enterprise
   - SQL Server Data Tools (SSDT)

## Setup Steps

### 1. Clone the Repository

```bash
git clone https://github.com/nakedenterprise/NKD.git
cd NKD
```

### 2. Install Dependencies

1. **NuGet Packages**
   - Open the solution in Visual Studio
   - Right-click on the solution in Solution Explorer
   - Select "Restore NuGet Packages"

2. **NPM Packages** (if working on web components)
   ```bash
   cd src/main/NKD.Web
   npm install
   ```

### 3. Database Setup

1. **Create Database**
   - Open SQL Server Management Studio
   - Connect to your SQL Server instance
   - Create a new database named `NKD_Dev`

2. **Run Database Scripts**
   - In SSMS, open and execute the scripts in this order:
     1. `src/main/NKD.DB/Scripts/01_Tables.sql`
     2. `src/main/NKD.DB/Scripts/02_StoredProcedures.sql`
     3. `src/main/NKD.DB/Scripts/03_InitialData.sql`

### 4. Configure the Application

1. **Update Connection Strings**
   - Open `src/main/NKD.Web/Web.config`
   - Update the connection string to point to your database:
     ```xml
     <add name="NKDConnectionString" 
          connectionString="Server=YOUR_SERVER;Database=NKD_Dev;Integrated Security=True;"
          providerName="System.Data.SqlClient" />
     ```

2. **Configure App Settings**
   - Update any necessary settings in `Web.config`
   - Set `debug="true"` in the compilation section for development

### 5. Build and Run

1. **Build the Solution**
   - In Visual Studio, select "Build" > "Build Solution" (Ctrl+Shift+B)
   - Ensure there are no build errors

2. **Set Startup Project**
   - Right-click on `NKD.Web` in Solution Explorer
   - Select "Set as StartUp Project"

3. **Run the Application**
   - Press F5 or click the "Start" button in Visual Studio
   - The application should open in your default web browser

## Development Workflow

### Branching Strategy

- `main`: Production-ready code
- `develop`: Integration branch for features
- `feature/*`: Feature branches
- `bugfix/*`: Bug fix branches
- `release/*`: Release preparation branches

### Code Style and Standards

- Follow the [C# Coding Conventions](https://docs.microsoft.com/en-us/dotnet/csharp/fundamentals/coding-style/coding-conventions)
- Use 4 spaces for indentation (no tabs)
- Use meaningful variable and method names
- Add XML documentation for public APIs
- Write unit tests for new features

### Running Tests

1. **Unit Tests**
   - Open Test Explorer (Test > Test Explorer)
   - Click "Run All" or run individual tests

2. **Integration Tests**
   - Ensure the test database is properly set up
   - Run from Test Explorer

## Debugging

### Web Application

- Use browser developer tools (F12)
- Set breakpoints in Visual Studio
- Use Debug > Windows > Output for additional information

### Database

- Use SQL Server Profiler
- Check SQL Server logs
- Use the SQL Server Management Studio execution plan

## Common Issues and Solutions

### Build Failures

- **Missing NuGet packages**: Restore packages
- **Version conflicts**: Update package references
- **Build server issues**: Clean and rebuild solution

### Runtime Errors

- **Connection issues**: Verify connection strings
- **Permissions**: Check database user permissions
- **Missing dependencies**: Ensure all required services are running

## Development Tools

### Recommended Extensions

- ReSharper or Roslynator
- Web Essentials
- SQL Complete
- GitLens
- Web Compiler

### Browser Extensions

- React Developer Tools
- Redux DevTools
- Web Developer

## Next Steps

- [Coding Standards](coding-standards.md)
- [Testing Guidelines](testing.md)
- [API Development](api-development.md)

## Getting Help

- Check the [FAQ](../../faq.md)
- Search existing issues
- Open a new issue if needed
- Join our developer community (if applicable)
