import random

def frotar(n_frases: int = 1) -> list:
    with open("frases.txt", "r", encoding="utf-8") as f:
        frases = f.readlines()

    frases = [f.strip() for f in frases]

    return random.sample(frases, min(n_frases, len(frases)))
