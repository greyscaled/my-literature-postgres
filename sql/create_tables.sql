CREATE Table Authors
(
	id SERIAL PRIMARY KEY NOT NULL,
	name TEXT NOT NULL UNIQUE,
	website TEXT
);

CREATE TABLE Books
(
	id SERIAL PRIMARY KEY NOT NULL,
	title TEXT NOT NULL,
	author INTEGER references Authors(id) NOT NULL,
	link TEXT,
	read boolean NOT NULL DEFAULT false,
	liked boolean NOT NULL DEFAULT false,
	purchased boolean NOT NULL DEFAULT false
);