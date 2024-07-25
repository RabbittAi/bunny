<p align="center">
  <img src=".assets/bunny-avatar.png" alt="bunny Logo" width="250">
</p>

<h1 align="center">🚀 Bunny - Agentic AI Software Engineer 👩‍💻</h1>

> [!IMPORTANT]  
> This project is currently in a very early development/experimental stage. There are a lot of unimplemented/broken features at the moment. Contributions are welcome to help out with the progress!

## Table of Contents

- [About](#about)
- [Key Features](#key-features)
- [System Architecture](#system-architecture)
- [Getting Started](#getting-started)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [How to use](#how-to-use)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [Help and Support](#help-and-support)
- [License](#license)

## About

Bunny is an advanced AI software engineer that can understand high-level human instructions, break them down into steps, research relevant information, and write code to achieve the given objective. Bunny utilizes large language models, planning and reasoning algorithms, and web browsing abilities to intelligently develop software.

Bunny aims to revolutionize the way we build software by providing an AI pair programmer who can take on complex coding tasks with minimal human guidance. Whether you need to create a new feature, fix a bug, or develop an entire project from scratch, bunny is here to assist you.

> [!NOTE]
> Bunny is modeled after [Devin](https://www.cognition-labs.com/introducing-devin) by Cognition AI. This project aims to be an open-source alternative to Devin with an "overly ambitious" goal to meet the same score as Devin in the [SWE-bench](https://www.swebench.com/) Benchmarks... and eventually beat it?

## Key Features

- 🤖 Supports **Claude 3**, **GPT-4**, **Gemini**, **Mistral** , **Groq** and **Local LLMs** via [Ollama](https://ollama.com). For optimal performance: Use the **Claude 3** family of models.
- 🧠 Advanced AI planning and reasoning capabilities
- 🔍 Contextual keyword extraction for focused research
- 🌐 Seamless web browsing and information gathering
- 💻 Code writing in multiple programming languages
- 📊 Dynamic agent state tracking and visualization
- 💬 Natural language interaction via chat interface
- 📂 Project-based organization and management
- 🔌 Extensible architecture for adding new features and integrations

## System Architecture

Read [**README.md**](docs/architecture) for the detailed documentation.


## Getting Started

### Requirements
```
Version's requirements
  - Python >= 3.10 and < 3.12
  - NodeJs >= 18
  - bun
```

- Install uv - Python Package manager [download](https://github.com/astral-sh/uv)
- Install bun - JavaScript runtime [download](https://bun.sh/docs/installation)
- For ollama [ollama setup guide](docs/Installation/ollama.md) (optinal: if you don't want to use the local models then you can skip this step)
- For API models, configure the API keys via setting page in UI.


### Installation

To install bunny, follow these steps:

1. Clone the bunny repository:
   ```bash
   git clone https://github.com/RabbittAi/bunny.git
   ```
2. Navigate to the project directory:
   ```bash
   cd bunny
   ```
3. Create a virtual environment and install the required dependencies (you can use any virtual environment manager):
   ```bash
   uv venv
   
   # On macOS and Linux.
   source .venv/bin/activate

   # On Windows.
   .venv\Scripts\activate

   uv pip install -r requirements.txt
   ```
4. Install the playwright for browsering capabilities:
   ```bash
   playwright install --with-deps # installs browsers in playwright (and their deps) if required
   ```
5. Start the bunny server:
   ```bash
   python bunny.py
   ```
6. if everything is working fine, you see the following output:
   ```bash
   root: INFO   : bunny is up and running!
   ```
7. Now, for frontend, open a new terminal and navigate to the `ui` directory:
   ```bash
   cd ui/
   bun install
   bun run start
   ```
8. Access the bunny web interface by opening a browser and navigating to `http://127.0.0.1:3001`

### how to use

To start using bunny, follow these steps:

1. Open the bunny web interface in your browser.
2. To create a project, click on 'select project' and then click on 'new project'.
3. Select the search engine and model configuration for your project.
4. In the chat interface, provide a high-level objective or task description for bunny to work on.
5. Bunny will process your request, break it down into steps, and start working on the task.
6. Monitor bunny's progress, view generated code, and provide additional guidance or feedback as needed.
7. Once bunny completes the task, review the generated code and project files.
8. Iterate and refine the project as desired by providing further instructions or modifications.

## Configuration

Bunny requires certain configuration settings and API keys to function properly:

when you first time run bunny, it will create a `config.toml` file for you in the root directory. You can configure the following settings in the settings page via UI:

- API KEYS
   - `BING`: Your Bing Search API key for web searching capabilities.
   - `GOOGLE_SEARCH`: Your Google Search API key for web searching capabilities.
   - `GOOGLE_SEARCH_ENGINE_ID`: Your Google Search Engine ID for web searching using Google.
   - `OPENAI`: Your OpenAI API key for accessing GPT models.
   - `GEMINI`: Your Gemini API key for accessing Gemini models.
   - `CLAUDE`: Your Anthropic API key for accessing Claude models.
   - `MISTRAL`: Your Mistral API key for accessing Mistral models.
   - `GROQ`: Your Groq API key for accessing Groq models.
   - `NETLIFY`: Your Netlify API key for deploying and managing web projects.

- API_ENDPOINTS
   - `BING`: The Bing API endpoint for web searching.
   - `GOOGLE`: The Google API endpoint for web searching.
   - `OLLAMA`: The Ollama API endpoint for accessing Local LLMs.
   - `OPENAI`: The OpenAI API endpoint for accessing OpenAI models.

Make sure to keep your API keys secure and do not share them publicly. For setting up the Bing and Google search API keys, follow the instructions in the [search engine setup](docs/Installation/search_engine.md)


## Contributing

We welcome contributions to enhance bunny's capabilities and improve its performance. To contribute, please see the [`CONTRIBUTING.md`](CONTRIBUTING.md) file for steps.

## Help and Support

If you have any questions, feedback, or suggestions, please feel free to reach out to us. you can raise an issue in the [issue tracker](https://github.com/RabbittAi/bunny/issues) or join the [discussions](https://github.com/RabbittAi/bunny/discussions) for general discussions.

We also have a Discord server for the bunny community, where you can connect with other users, share your experiences, ask questions, and collaborate on the project. To join the bunny community Discord server, [click here](https://discord.gg/2cKeFbZJ).

## License

Bunny is released under the [MIT License](https://opensource.org/licenses/MIT). See the `LICENSE` file for more information.

## Star History

<div align="center">
<a href="https://star-history.com/#RabbittAi/bunny&Date">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=RabbittAi/bunny&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=RabbittAi/bunny&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=RabbittAi/bunny&type=Date" />
 </picture>
</a>
</div>

---

We hope you find bunny to be a valuable tool in your software development journey. If you have any questions, feedback, or suggestions, please don't hesitate to reach out. Happy coding with bunny!
