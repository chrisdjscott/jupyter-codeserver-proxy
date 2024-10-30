![build](https://github.com/FZJ-JSC/jupyter-codeserver-proxy/workflows/build/badge.svg)

# jupyter-codeserver-proxy
Integrate [code-server](https://github.com/coder/code-server) in your Jupyter environment for an fast, feature-rich and easy to use remote desktop in the browser.

## Installation on NeSI

On Mahuika run:

```
ml purge
ml JupyterLab
pip install --user git+https://github.com/chrisdjscott/jupyter-codeserver-proxy
```

The "VS Code (code-server)" app should be available via [https://jupyter.nesi.org.nz](https://jupyter.nesi.org.nz).

### Known problems on NeSI

- need to run "ml purge" in code server terminal
- slurm not working properly

## Credits
- [code-server](https://github.com/coder/code-server) 
- jupyter-server-proxy

## License
BSD 3-Clause
