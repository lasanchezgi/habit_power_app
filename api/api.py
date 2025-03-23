from fastapi import FastAPI
from domain.use_cases.habit_use_case import get_habits_by_category
from domain.entities.habit import Habit
from typing import List

app = FastAPI()

@app.get("/habits/", repsponse_model=List[Habit])
def get_habits(category: str | None = None):
    habits = get_habits_by_category(category)
    return habits