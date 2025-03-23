from pydantic import BaseModel
from typing import List, Optional

class Habit(BaseModel):
    name: str
    categories: List[str]
    date: Optional[str]
    periodicity: Optional[str]

def convert_to_habit_models(raw_habits: List[dict]) -> List[Habit]:
    habits: list[Habit] = []

    for habit_dict in raw_habits:
        habit = Habit(**habit_dict)
        habits.append(habit)
    
    return habits