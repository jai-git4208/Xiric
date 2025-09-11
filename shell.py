import xiric

while True:
    text = input("Xriric >>> ")
    result, error = xiric.run('main.xrc', text)

    if error: print(error.as_string())
    else: print(result)