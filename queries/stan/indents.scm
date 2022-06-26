[
	(functions)
	(data)
	(transformed_data)
	(parameters)
	(transformed_parameters)
	(model)
	(generated_quantities)
	(block_statement)
	(print_statement)
	(parenthized_expression)
	(distr_expression)
] @indent

[
	"else"
	"("
	"{"
] @branch

[
	")"
	"}"
] @branch @indent_end

(string_literal) @ignore

((ERROR (parameter_declaration)) @aligned_indent
	(#set! "delimiter" "()"))

([(argument_list) (parameter_list)] @aligned_indent
	(#set! "delimiter" "()"))

(parameter_list) @aligned_indent
