CREATE TABLE habits (
    id UUID,  -- Identificador único
    user_id TEXT,  -- Relación con el usuario
    name TEXT NOT NULL,                     -- Nombre del hábito
    description TEXT,                       -- Descripción del hábito
    frequency TEXT CHECK (frequency IN ('daily', 'weekly', 'monthly', 'annual')), -- Frecuencia, crear otra tabla para esto, esto es la periodicidad
    reminder_time TEXT,                     -- Hora de recordatorio (opcional)
    difficulty_level TEXT CHECK (difficulty_level IN ('easy', 'medium', 'hard')), -- Nivel de dificultad, crear otra tabla para esto
    expected_duration INTEGER,              -- Duración esperada en minutos/días
    goal_type TEXT,                         -- Tipo de meta (cantidad, tiempo, etc.)
    goal_value INTEGER,                     -- Valor de la meta (ej: 10 min de lectura)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- Agreagar categorias de los habitos, tabla de las categorias, tabla que relaciona los usuarios con las categorias
    -- Agregar la fecha que se creo el habito
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
