from domain.entities.habit import Habit
from repository.habit_repository import fetch_habits_db
from typing import List

# Funciones de orden superior (HOF)
def filter_habits(habits, filter_fn) -> List[Habit]:
    return list(filter(filter_fn, habits))

# Funciones anónimas (lambda)
def get_category_filter(category):
    return lambda habit: category.lower() in map(str.lower, habit.categories)

def get_periodicity_filter(periodicity):
    return lambda habit: habit.periodicity == periodicity

def filter_by_category(habits: List[Habit], category: str) -> List[Habit]:
    if not category:
        return habits
    category_filter = get_category_filter(category)
    return filter_habits(habits, category_filter)

def filter_by_periodicity(habits: List[Habit], periodicity: str) -> List[Habit]:
    if not periodicity:
        return habits
    periodicity_filter = get_periodicity_filter(periodicity)
    return filter_habits(habits, periodicity_filter)

def get_habits_by_category(category: str | None) -> List[Habit]:
    habits: List[Habit] = fetch_habits_db()
    return filter_by_category(habits, category)

def get_habits_by_periodicity(periodicity: str | None) -> List[Habit]:
    habits: List[Habit] = fetch_habits_db()
    return filter_by_periodicity(habits, periodicity)

def create_habit(habit, db_connection):
    pass

def get_habit_by_id(habit_id, db_connection):
    pass

def update_habit(habit, db_connection):
    pass

def remove_habit(habit_id, db_connection):
    pass

def edit_habit(habit_id, db_connection):
    pass