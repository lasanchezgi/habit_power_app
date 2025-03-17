CREATE TABLE habits (
    id TEXT PRIMARY KEY DEFAULT (lower(hex(randomblob(4)) || '-' || hex(randomblob(2)) || '-' || '4' || substr(hex(randomblob(2)),2) || '-' || substr('89ab',abs(random()) % 4 + 1, 1) || substr(hex(randomblob(2)),2) || '-' || hex(randomblob(6)))),  -- Identificador único
    user_id TEXT,  -- Relación con el usuario
    name TEXT NOT NULL,                     -- Nombre del hábito
    description TEXT,                       -- Descripción del hábito
    frequency TEXT CHECK (frequency IN ('daily', 'weekly', 'monthly', 'annual')), -- Frecuencia
    reminder_time TEXT,                     -- Hora de recordatorio (opcional)
    difficulty_level TEXT CHECK (difficulty_level IN ('easy', 'medium', 'hard')), -- Nivel de dificultad
    expected_duration INTEGER,              -- Duración esperada en minutos/días
    goal_type TEXT,                         -- Tipo de meta (cantidad, tiempo, etc.)
    goal_value INTEGER,                     -- Valor de la meta (ej: 10 min de lectura)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
