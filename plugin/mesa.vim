" Copyright 2015 Chad Versace <chad@kiwitree.net>
" All rights reserved.
"
" Redistribution and use in source and binary forms, with or without
" modification, are permitted provided that the following conditions are
" met:
"
" * Redistributions of source code must retain the above copyright notice,
"   this list of conditions and the following disclaimer.
" * Redistributions in binary form must reproduce the above copyright
"   notice, this list of conditions and the following disclaimer in the
"   documentation and/or other materials provided with the distribution.
" * Neither the name of the copyright holder nor the names of his
"   contributors may be used to endorse or promote products derived from
"   this software without specific prior written permission.
"
" THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
" IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
" TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
" PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
" HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
" SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
" TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
" PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
" LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
" NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
" SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

function s:SetPEP8Style()
    set expandtab
    set shiftwidth=4
    set softtabstop=4
    set tabstop=8
    set cinoptions=(0,W8
    set textwidth=78
endfunction

function s:MesaOnReadCFile()
    set expandtab
    set shiftwidth=3
    set softtabstop=3
    set tabstop=8
    set cinoptions=:0,l1,L-1,(0,W3
    set textwidth=78
endfunction

function s:MesaOnReadPyFile()
    call s:SetPEP8Style()
endfunction

function s:MesaOnReadMakefile()
    set noexpandtab
    set shiftwidth=8
    set softtabstop=8
    set tabstop=8
    set cinoptions=(0
    set textwidth=78
endfunction

function s:MesaOnReadFile()
    if &filetype == "c" || &filetype == "cpp"
        call s:MesaOnReadCFile()
    elseif &filetype == "python"
        call s:MesaOnReadPyFile()
    elseif &filetype == "make"
        call s:MesaOnReadMakefile()
    endif
endfunction

function s:PiglitOnReadCFile()
    set noexpandtab
    set shiftwidth=8
    set softtabstop=0
    set tabstop=8
    set cinoptions=:0,l1,L-1,(0,Ws
    set textwidth=78
endfunction

function s:PiglitOnReadPyFile()
    call s:SetPEP8Style()
endfunction

function s:PiglitOnReadCMakeFile()
    set noexpandtab
    set shiftwidth=8
    set softtabstop=0
    set tabstop=8
    set cinoptions=(0
    set textwidth=78
endfunction

function s:PiglitOnReadFile()
    if &filetype == "c" || &filetype == "cpp"
        call s:PiglitOnReadCFile()
    elseif &filetype == "python"
        call s:PiglitOnReadPyFile()
    elseif &filetype == "cmake"
        call s:PiglitOnReadCMakeFile()
    endif
endfunction

autocmd BufNewFile,BufRead **/mesa/** call s:MesaOnReadFile()
autocmd BufNewFile,BufRead **/piglit/** call s:PiglitOnReadFile()
