from domain.entities.habit import Habit, convert_to_habit_models
from typing import List

def fetch_habits_db() -> List[Habit]:
    raw_habits = [
        {
            "name": "Read a book",
            "categories": ["reading"],
            "date": "2021-08-01",
            "periodicity": "daily"
        },
        {
            "name": "Run",
            "categories": ["exercise"],
            "date": "2021-08-01",
            "periodicity": "daily"
        },
        {
            "name": "Morning Run",
            "categories": ["Fitness", "Well-being"],
            "date": "2025-03-01",
            "periodicity": "daily"
        },
        {
            "name": "Meditation",
            "categories": ["Mindfulness", "Well-being"],
            "date": "2025-03-02",
            "periodicity": "daily"
        },
        {
            "name": "Reading",
            "categories": ["Education", "Mindfulness"],
            "date": "2025-03-03",
            "periodicity": "weekly"
        }
    ]

    return convert_to_habit_models(raw_habits)