import random
with open('ram.hex', 'w') as ram:
    ram.writelines([
        f'{random.randint(0, 255):08x}\n' for _ in range(16)
    ])