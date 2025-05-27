# Configuration Guide

This guide covers the configuration options available in the Naked Enterprise (NKD) framework.

## Application Settings

### Web Configuration

The main web configuration is stored in `src/main/NKD.Web/Web.config`. Key sections include:

```xml
<configuration>
  <appSettings>
    <add key="ApplicationName" value="Naked Enterprise" />
    <add key="Environment" value="Development" />
    <add key="EnableDetailedErrors" value="true" />
  </appSettings>
  
  <connectionStrings>
    <add name="NKDConnectionString" 
         connectionString="Server=.;Database=NKD_Dev;Integrated Security=True;"
         providerName="System.Data.SqlClient" />
  </connectionStrings>
</configuration>
```

### Database Configuration

Database settings can be configured in the connection string. Supported providers:

- SQL Server (default)
- SQL Server Express
- LocalDB (for development)

Example for LocalDB:
```xml
<add name="NKDConnectionString" 
     connectionString="Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=NKD_Dev;Integrated Security=True;"
     providerName="System.Data.SqlClient" />
```

## Environment Variables

NKD supports the following environment variables:

- `NKD_ENVIRONMENT`: Set to "Production", "Staging", or "Development"
- `NKD_CONNECTION_STRING`: Override the database connection string
- `NKD_LOG_LEVEL`: Set the logging level (Debug, Info, Warning, Error)

## Logging Configuration

Logging is configured in `NKD.Module/Logging/LoggingConfig.cs`. Available log levels:

- Debug
- Information
- Warning
- Error
- Critical

## Email Configuration

To configure email notifications, update the following in `Web.config`:

```xml
<system.net>
  <mailSettings>
    <smtp from="noreply@yourdomain.com">
      <network host="smtp.yourdomain.com" 
               port="587" 
               userName="your-username" 
               password="your-password" 
               enableSsl="true" />
    </smtp>
  </mailSettings>
</system.net>
```

## Caching

NKD uses a caching layer that can be configured in `NKD.Module/Caching/CacheConfig.cs`:

- MemoryCache (default)
- Distributed Cache (Redis)
- SQL Server Cache

## Security Settings

### Authentication

Configure authentication providers in `Startup.cs`:

```csharp
services.AddAuthentication()
    .AddCookie()
    .AddJwtBearer();
```

### Authorization

Role-based authorization is configured using attributes:

```csharp
[Authorize(Roles = "Administrator")]
public class AdminController : Controller
{
    // Controller actions
}
```

## Custom Configuration

For custom configuration, create a `custom.config` file in the web root and reference it in `Web.config`:

```xml
<appSettings configSource="custom.config" />
```

## Best Practices

1. Never commit sensitive information to version control
2. Use environment variables for production secrets
3. Keep development and production configurations separate
4. Regularly back up configuration files

## Troubleshooting

- **Configuration errors**: Check the Windows Event Log for detailed error messages
- **Connection issues**: Verify connection strings and network access
- **Permission problems**: Ensure the application pool identity has appropriate permissions
