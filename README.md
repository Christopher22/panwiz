# panwiz
*panwiz* is a template to utilize a Github action for converting between various formats using @macfarlane2006. Its primary usage is the compilation of pretty scientific papers from Markdown files. The [corresponding configuration file](pandoc.default.yml) defines the command-line arguments for the executable in the background.

## Usage
Your workflow may look like this:

- Fork or copy this project
- Specify your input and output files, which defaults to this README and a pretty PDF generated by LaTeX. However, many other formats are supported.
- (Add further gimmicks: This can be bibliographies, templates, other properties, and metadata - be creative! Pandoc is extremely powerful.)
- Write your text and commit as much as you want.
- Push your changes to GitHub. The conversion process will start.
- Once the process is done, you will see a red cross or a green checkmark on the right of your last commit's description
  - In the former case, an error occurred. Check for errors under "Run pandoc"
  - In the latter case, you can download under "Artifacts" the output.zip containing all the files you saved there.
- (Repeat committing and pushing.)

If you are unsure, just download the PDF generated by this project and have a look!

## Additional features
Extending the bare pandoc Docker containers, this repository builds a custom environment with advanced features. Consider this equation:

$$\text{pandoc} + \text{filters} = \text{Even more amazing}$$ {#eq:equation_id}

By default, *panwiz* installs the useful filters pandoc-fignos, pandoc-eqnos, pandoc-tablenos, and pandoc-secnos. With them, you can reference figures, equations, tables, and sections like eq. @eq:equation_id.

**All the best for your thesis or paper!**
