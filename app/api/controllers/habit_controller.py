from domain.entities.habit import Habit
from domain.use_cases.habit_use_case import create_habit

def new_habit_handler(request):
    description = request.get('description')
    periodicty = request.get('periodicty')

    habit = Habit(description, periodicty)

    if not habit.is_valid():
        return {
            'status_code': 400,
            'message': 'Invalid habit'
        }
    
    try:
        db_connection = get_db_connection({})
        create_habit(habit, db_connection)
        return {
            'status_code': 201,
            'message': 'Habit created'
        }
    except Exception as e:
        print(e)
        return {
            'status_code': 500,
            'message': 'Internal server error'
        }