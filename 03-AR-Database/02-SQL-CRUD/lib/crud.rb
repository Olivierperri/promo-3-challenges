require 'sqlite3'

def create_scheme(db)
  #TODO: create your db scheme
  sql = %q{

CREATE TABLE IF NOT EXISTS news

(   id INTEGER PRIMARY KEY,
    name NVARCHAR(160),
    rating INTEGER(5),
    source_url VARCHAR(160),
    date DATETIME
    )
  } # %q allows for multiline string in ruby

  db.execute(sql)

end

def create_post(db, post)
  #TODO: add a new post to your db
  db.execute("INSERT INTO news (name, rating, source_url, date)
    VALUES ('#{post[:name]}', #{post[:rating]}, '#{post[:source_url]}', '#{post[:date]}')")
end

def get_posts(db)
   #TODO: list all posts
  puts db.execute("SELECT *
            FROM news")
end

def get_post(db, id)
  #TODO: get a specific post
  puts db.execute("SELECT *
              FROM news
              WHERE id = #{id}")
end

def update_post(db, id, name)
  #TODO: update a post's name in your db
  db.execute("UPDATE news
          SET name = #{name}
          WHERE id = #{id}")
end

def delete_posts(db)
  #TODO: delete a post in your db
  db.execute("DELETE FROM news")
end

def delete_post(db, id)
  #TODO: delete a specific post in your db
  db.execute("DELETE FROM news
          WHERE id = #{id}")
end