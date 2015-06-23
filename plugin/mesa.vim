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

function s:OnReadCFile()
    set expandtab
    set shiftwidth=3
    set softtabstop=3
    set tabstop=8
    set cinoptions=L0,(0,Ws
endfunction

function s:OnReadPyFile()
    set expandtab
    set shiftwidth=4
    set softtabstop=4
    set tabstop=8
    set cinoptions=L0,(0,Ws
endfunction

function s:OnReadMakefile()
    set noexpandtab
    set shiftwidth=8
    set softtabstop=8
    set tabstop=8
    set cinoptions=L0,(0,Ws
endfunction

autocmd BufNewFile,BufRead **/mesa/**.{c,cpp,h,hp,l,lpp,y,ypp} call s:OnReadCFile()
autocmd BufNewFile,BufRead **/mesa/**.py call s:OnReadPyFile()
autocmd BufNewFile,BufRead **/mesa/**.mk call s:OnReadMakefile()
autocmd BufNewFile,BufRead **/mesa/**/Makefile.am call s:OnReadMakefile()
