CREATE TABLE Сustumers --Клиенты
(
    id_SERIAL PRIMARY KEY,
    firstName TEXT NOT NULL,
    middlename TEXT,
    lastName TEXT NOT NULL,
    Phone VARCHAR(11) NOT NULL UNIQUE
);


CREATE TABLE Mechanics --Мастера
(
    id_SERIAL PRIMARY KEY,
    firstname TEXT NOT NULL,
    middlename TEXT,
    lastname TEXT NOT NULL,
    specialization VARCHAR(50) NOT NULL
);


CREATE TABLE Zapchasti --Запчасти
(
    id_SERIAL PRIMARY KEY,
    zapchasti TEXT,
    stoimost FLOAT
);


CREATE TABLE Orders --Заказы
(
    id_SERIAL PRIMARY KEY,
    tip_remonta TEXT,
    custumer_id INT,
    mechanic_id INT,
    zapchasti_id INT,
    itogovaya_stoimost FLOAT,
    created_date Date,

    FOREIGN KEY (custumer_id) REFERENCES Custumers(id),
    FOREIGN KEY (master_id) REFERENCES Mechanics(id),
    FOREIGN KEY (zapchasti_id) REFERENCES Zapchasti(id)
);