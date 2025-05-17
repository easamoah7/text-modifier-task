# Text Modifier Task

A GitHub Actions task demonstrating modular, reusable, and scalable workflows for text modification and Docker image building.

## Project Features

- **Text Modification**: Custom action to find and replace text in files
- **Docker Integration**: Automated building and publishing to GitHub Container Registry
- **Reusable Components**: Modular workflows designed for reuse in other projects
- **Parametrized Execution**: Configurable inputs for all components

## Architecture

The project implements a fully modular architecture:

1. **Custom Text Modifier Action**: Handles the core text replacement functionality
2. **Reusable Text Modifier Workflow**: Orchestrates file checkout and modification
3. **Reusable Docker Builder Workflow**: Handles building and publishing Docker images
4. **Main Orchestration Workflow**: Connects the components together

## Usage

### Manual Trigger

You can manually trigger the workflow with the following parameters:

- `file-path`: Path to text file to modify (default: `content.txt`)
- `old-text`: Text to be replaced (default: `tag 1`)
- `new-text`: Replacement text (default: `tag 2`)
- `image-name`: Docker image name (default: `text-modifier-app`)
- `image-tag`: Docker image tag (default: `latest`)

### Using the Docker Image

Pull and run the image:

```bash
docker pull ghcr.io/{your-username}/text-modifier-app:latest
docker run --rm ghcr.io/{your-username}/text-modifier-app:latest
```
