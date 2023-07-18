FROM pandoc/latex:latest
RUN apk add --no-cache python3 python3-dev py3-pip ghc git gcc cabal musl-dev linux-headers libffi-dev && pip3 install --no-cache --upgrade pip setuptools git+https://github.com/tomduck/pandoc-xnos@284474574f51888be75603e7d1df667a0890504d#egg=pandoc-xnos && cabal update && cabal install pandoc-citeproc-preamble && tlmgr update --self && tlmgr install adjustbox babel-german background bidi collectbox csquotes everypage filehook footmisc footnotebackref framed fvextra letltxmacro ly1 mdframed mweights needspace pagecolor sourcecodepro sourcesanspro titling ucharcat ulem unicode-math upquote cleveref xecjk xurl zref sectsty
ENV PATH="/root/.cabal/bin:${PATH}"
ENTRYPOINT ["pandoc", "--defaults=pandoc.default.yml"]
# Standalone usage
# 1. Building: 'docker build -t pandoc:0.1 .'
# 2. Moving to folder of interest
# 3. Compiling: 'docker run --rm --volume "$(pwd):/data" pandoc:0.1'
