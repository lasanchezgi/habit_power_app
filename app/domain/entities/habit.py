from pydantic import BaseModel
from typing import List, Optional

# Debe tener los mismos campos que la base de datos
# Debo organizar esta clase para que tenga los mismos campos que la base de datos
# Puede tener más campos para otras cosas
# Las entidades tambien se pueden usar para hacer validaciones, tambien para generar respuestas de las APIs
class Habit(BaseModel):
    name: str
    categories: List[str]
    date: Optional[str]
    periodicity: Optional[str]

# Esta función debe estar en el habit_use_case.py
def convert_to_habit_models(raw_habits: List[dict]) -> List[Habit]:
    habits: list[Habit] = []

    for habit_dict in raw_habits:
        habit = Habit(**habit_dict)
        habits.append(habit)
    
    return habits