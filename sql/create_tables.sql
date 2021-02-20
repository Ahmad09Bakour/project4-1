CREATE TABLE IF NOT EXISTS users (
  user_id SERIAL PRIMARY KEY,
  surname VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  password VARCHAR(128) NOT NULL
);

CREATE TABLE IF NOT EXISTS schedules (
  sched_id SERIAL PRIMARY KEY,
  id_user SERIAL NOT NULL,
  day_of_week INT(1) NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL, 
  FOREIGN KEY (id_user) REFERENCES users (user_id) ON DELETE CASCADE;
)