# Naked Enterprise (NKD)

[![License: CC BY-NC-SA 3.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%203.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/3.0/)

## Overview

Naked Enterprise (NKD) is an open-source enterprise application framework built on the .NET platform. The project appears to be a comprehensive solution with web, database, and desktop components.

## Project Structure

- `src/` - Main source code
  - `main/` - Primary solution and projects
    - `NKD.Cube/` - OLAP cube processing components
    - `NKD.DB/` - Database access layer
    - `NKD.Import/` - Data import functionality
    - `NKD.Module/` - Core module system
    - `NKD.Orchard/` - Orchard CMS integration
    - `NKD.Web/` - Web application
    - `NKD.Win/` - Windows application
    - `NKD.Workflow/` - Workflow components
- `docs/` - Documentation files
- `tools/` - Build and development tools

## Getting Started

### Prerequisites

- .NET Framework (version to be determined)
- SQL Server (version to be determined)
- Visual Studio (recommended)

### Building the Solution

1. Clone the repository
2. Open `src/main/NKD.sln` in Visual Studio
3. Restore NuGet packages
4. Build the solution

## Documentation

For detailed documentation, please visit the [docs](docs/) directory.

## License

This project is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## More Information

Visit the project website: [http://nakedenterprise.org/](http://nakedenterprise.org/)
