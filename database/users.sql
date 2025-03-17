CREATE TABLE users (
    id TEXT PRIMARY KEY DEFAULT (lower(hex(randomblob(16)))),  -- Identificador único
    email TEXT UNIQUE NOT NULL,                               -- Correo único
    username TEXT UNIQUE NOT NULL,                            -- Nombre de usuario único
    password_hash TEXT NOT NULL,                              -- Contraseña encriptada
    full_name TEXT,                                           -- Nombre completo
    phone_number TEXT,                                        -- Teléfono (opcional)
    age_range TEXT,                                           -- Rango de edad
    consistency_level TEXT,                                   -- ¿Se considera consistente?
    main_goal TEXT,                                           -- Meta principal del usuario
    habit_category TEXT,                                      -- Categoría de hábitos a mejorar
    profile_picture TEXT,                                     -- URL de la foto de perfil
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,           -- Fecha de creación de cuenta
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP            -- Fecha de actualización de cuenta
);

