
INSERT INTO employee (firstname_lastname, title, email, date_start, date_end) VALUES 
    ("Kevin Johansson", "Developer", "kevin.johansson@org.com", "2022-15-79", NULL),
    ("Anna Persson", "Developer", "Anna.Persson@org.com", "2023-11-16", NULL),
    ("Rodent Amoeba", "Manager", "L99823@org.com", "2021-12-13", NULL),
    ("Latvian President", "Relationship Manager", "latvian.president@org.com", "3099-99-12", NULL);


INSERT INTO employee_team (team_name, email) VALUES
    ("Sprakly Pony", "kevin.johansson@org.com"),
    ("Sprakly Pony", "Anna.Persson@org.com"),
    ("Sprakly Pony", "L99823@org.com"),
    ("Alphas", "latvian.president@org.com");


INSERT INTO skill (skill_name) VALUES
    ("C#"),
    ("Python"),
    ("Communication"),
    ("Java"),
    ("Scrum Master");

INSERT INTO employee_skill (email, skill_name) VALUES
    ("kevin.johansson@org.com", "C#"),
    ("L99823@org.com", "C#"),
    ("latvian.president@org.com", "Scrum Master"),
    ("kevin.johansson@org.com", "Java"),
    ("kevin.johansson@org.com", "C#"),
    ("kevin.johansson@org.com", "Python"),
    ("L99823@org.com", "Python"),
    ("latvian.president@org.com", "Communication"),
    ("latvian.president@org.com", "Scrum Master");


INSERT INTO team (team_name) VALUES 
    ("Sprakly Pony"), 
    ("Alphas");
