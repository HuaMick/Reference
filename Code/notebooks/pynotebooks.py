import os
from dotenv import load_dotenv

def notebook_load_env(
    project_name: str, 
    environment_filepath: str):
    """
    Navigates to the project root and loads the environment variables for the notebook.
    """
    current_directory = os.getcwd().split("/")
    if current_directory[-1] != project_name:
        directory = os.getcwd().split(project_name)[0] + project_name
        os.chdir(directory)
        load_dotenv(dotenv_path=environment_filepath)

def set_widgets_to_darkmode():
    from IPython.display import HTML
    return HTML("""
    <style>
    /*overwrite hard coded write background by vscode for ipywidges */
    .cell-output-ipywidget-background {
       background-color: transparent !important;
    }

    /*set widget foreground text and color of interactive widget to vs dark theme color */
    :root {
        --jp-widgets-color: var(--vscode-editor-foreground);
        --jp-widgets-font-size: var(--vscode-editor-font-size);
    }
    </style>
    """)