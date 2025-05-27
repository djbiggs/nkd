# Quick Start Guide

This guide will help you quickly get started with the Naked Enterprise (NKD) framework.

## First Steps

1. **Log in to the application**
   - Open your web browser and navigate to `http://localhost:port` (the default port will be assigned by IIS Express)
   - Use the default administrator credentials (if available in your installation)

2. **Explore the dashboard**
   - The main dashboard provides an overview of the system
   - Navigate through the main menu to explore different modules

## Core Concepts

### Modules
NKD is built around a modular architecture. Key modules include:

- **NKD.Module**: Core functionality
- **NKD.DB**: Database access layer
- **NKD.Web**: Web interface components
- **NKD.Win**: Windows desktop components

### Data Model

The data model is centered around:
- Business objects (defined in `NKD.Module.BusinessObjects`)
- Database entities (managed in `NKD.DB`)
- Import/Export functionality (in `NKD.Import`)

## Common Tasks

### Creating a New Business Object

1. Navigate to the Business Objects section
2. Click "Create New"
3. Fill in the required fields
4. Save your changes

### Running Reports

1. Go to the Reports section
2. Select a report template
3. Configure report parameters
4. Generate the report

## Next Steps

- Explore the [Configuration Guide](configuration.md) for advanced setup options
- Learn about [Customizing the Application](../development/customization.md)
- Check out the [API Reference](../api/web-api.md) for integration options

## Getting Help

- For documentation issues, please submit a pull request
- For support questions, please check our [FAQ](../../faq.md) or open an issue on GitHub
