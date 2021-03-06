class Video

  # Creates instance variables and also makes them visible and editable outside the object.
  attr_accessor :id, :title, :body, :source, :image

  # Save is an instance method that we can use to create or update a post
  def save

    # Assign the Postgre connect to variable
    conn = Video.open_connection

    # If the Post instance has an it means it already exists so we are going to update an existing record
    if(self.id)
      sql = "UPDATE video SET title='#{self.title}', body='#{self.body}' WHERE id = #{self.id}"
    # If there Post has no id this means the post is new and needs creating
    else
      sql = "INSERT INTO video (title, body, source, image) VALUES ('#{self.title}', '#{self.body}', '#{self.source}', '#{self.image}')"
    end

    # Execute the sql in Postgres
    conn.exec(sql)
  end

  # Open connection is Class method that we will use to open a connection the Postgres database. This is not tied to instance of a class but to the class itself
  def self.open_connection
    # Assign the Postgre connect to variable
    conn = PG.connect(dbname: "ufc")
  end

  # Class method the get all our post from the db
  def self.all

    # Assign the Postgre connect to variable
    conn = self.open_connection

    # SQL statement to select our posts and order them
    sql = "SELECT id,title,body,source,image FROM video ORDER BY id DESC"

    # Execute the sql in Postgres
    results = conn.exec(sql)

    # Create our formatted object by mapping through it and using our hydrate method to get the structure correct
    videos = results.map do |video|
      self.hydrate(video)
    end

  end

  # Class method the will retrieve one post from the db
  def self.find(id)

    # Assign the Postgre connect to variable
    conn = self.open_connection

    # SQL statement to select one post and limit to one
    sql = "SELECT * FROM video WHERE id =#{id} LIMIT 1"

    # Execute the sql in Postgres
    videos = conn.exec(sql)

    # Create our formatted object by passing it through our hydrate method to get the structure correct
    video = self.hydrate(videos[0])

    # Return the post
    video

  end

  # A class method to destroy a post from the DB
  def self.destroy(id)

    # Assign the Postgre connect to variable
    conn = self.open_connection

    # SQL statement to delete one post with the id we passed in
    sql = "DELETE FROM video WHERE id = #{id}"

    # Execute the sql in Postgres
    conn.exec(sql)

  end

  # Hydrate is Class method that we can use to format our data that we get back from the PG gem. The PG gem returns the data as a weird object type called PG:Result.
  def self.hydrate(video_data)

    # Create an instace of a post
    video = Video.new

    # Set the instance variables to be the ones from the PG:Result object so we can use them later in our templates
    video.id = video_data['id']
    video.title = video_data['title']
    video.body = video_data['body']
    video.source = video_data['source']
    video.image = video_data['image']

    # Return the post
    video
  end

end
