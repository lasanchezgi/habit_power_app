CREATE TABLE tracking (
    id TEXT PRIMARY KEY DEFAULT (lower(hex(randomblob(4)) || '-' || hex(randomblob(2)) || '-' || '4' || substr(hex(randomblob(2)), 2) || '-' || substr('89ab', 1 + (abs(random()) % 4), 1) || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6)))),  -- Identificador único
    user_id TEXT REFERENCES users(id) ON DELETE CASCADE,  -- Relación con el usuario
    habit_id TEXT REFERENCES habits(id) ON DELETE CASCADE, -- Relación con el hábito
    date DATE NOT NULL,                             -- Fecha del registro
    status TEXT CHECK (status IN ('done', 'not_done', 'partial')), -- Estado del hábito
    reason TEXT,                                    -- Razón si no se cumplió
    streak INTEGER DEFAULT 0,                       -- Racha acumulada
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
