import xiric

RED = "\033[31m"
RESET = "\033[0m"

while True:
	text = input(f"Xiric {RED}>>>{RESET} ")
	if text.strip() == "": continue
	result, error = xiric.run('<stdin>', text)

	if error:
		print(error.as_string())
	elif result:
		if len(result.elements) == 1:
			print(repr(result.elements[0]))
		else:
			print(repr(result))