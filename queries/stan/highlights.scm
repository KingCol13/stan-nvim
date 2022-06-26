[
	"functions"
	"data"
	"transformed data"
	"parameters"
	"transformed parameters"
	"model"
	"generated quantities"
] @keyword

"return" @keyword.return

["for" "while" "break" "continue"] @repeat

["if" "else"] @conditional

[";" "," "|"] @delimiter

[
	"=" "<-" "+=" "-=" "*=" "/=" ".*=" "./="
	"+" "-" "*" "/" "%" "^"
	"\'"
	".*"
	"./"
	">=" ">" "<=" "<"
	"!=" "=="
	"&&" "||"
	"!"
	"?"
] @operator

[ "(" ")" "[" "]" "{" "}"] @punctuation.bracket

[
	"int"
	"real"
	"vector"
	"ordered"
	"positive_ordered"
	"simplex"
	"unit_vector"
	"row_vector"
	"matrix"
	"cholesky_factor_corr"
	"cholesky_factor_cov"
	"corr_matrix"
	"cov_matrix"
] @type.builtin

[
	"lower"
	"upper"
] @parameter

"print" @function.builtin

"target" @variable.builtin

(escape_sequence) @string.escape
(string_literal) @string

(integer_literal) @number
(real_literal) @number

(comment) @comment

(function_declarator (identifier) @function)

(parameter_declaration (identifier) @parameter)

(function_expression (identifier) @function)

(distr_expression (identifier) @function)

(identifier) @variable
