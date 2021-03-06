function s = display(g)
% MIXTURE_MODEL/DISPLAY   
% DISPLAY() is the string representation of 

% Copyright October, 2006, Brown University, Providence, RI. 
% All Rights Reserved 

% Permission to use, copy, modify, and distribute this software and its
% documentation for any purpose other than its incorporation into a commercial
% product is hereby granted without fee, provided that the above copyright
% notice appear in all copies and that both that copyright notice and this
% permission notice appear in supporting documentation, and that the name of
% Brown University not be used in advertising or publicity pertaining to
% distribution of the software without specific, written prior permission. 

% BROWN UNIVERSITY DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
% INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR ANY
% PARTICULAR PURPOSE. IN NO EVENT SHALL BROWN UNIVERSITY BE LIABLE FOR ANY
% SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER
% RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF
% CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
% CONNECTION WITH THE USE.

% Author: Frank Wood fwood@cs.brown.edu

disp(sprintf('Mixture Model with %d components',length(g.weight)))
% ps = 'Weights : ';
% 
% for(i=1:length(g.weight))
%     ps = [ps num2str(g.weight(i)) ', '];
% end
% ps = [ps sprintf('\n')];
% disp(ps);
for(i=1:length(g.weight))
    disp([sprintf('Mixture density #%d -- Type: ',i) class(g.component{i}) ' Weight: ' num2str(g.weight(i)) ]);
    display(g.component{i});
end
% s = [ sprintf('Mean: ') mat2str(p.m) ...
%       sprintf('\nCovariance: \n\n') mat2str(p.c)];
