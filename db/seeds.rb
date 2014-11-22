deck1 = Deck.create(title: "Beers & Books")
deck2 = Deck.create(title: "Num Nums")
deck3 = Deck.create(title: "DBC 123")
deck4 = Deck.create(title: "Largemouth Trivia!")


 deck1.cards << Card.create(question: "This tasty beer is a brown ale from England", answer:"new castle" )
 deck1.cards << Card.create(question:"Hiney" , answer:"heiniken" )
 deck1.cards << Card.create(question:" Champagne of beer" , answer: "coors")
 deck1.cards << Card.create(question: " This book is a about  some kid that goes to Hogwarts and probably does NOT drink beer" , answer:"harry potter" )
 deck1.cards << Card.create(question: "This book is great to read with a beer and is meant for a soul in need of some chicken soup" , answer: "chicken soup for the soul" )



 deck2.cards << Card.create(question: " This restaurant serves up burrito sized servings of sushi", answer: "sushirrito" )
 deck2.cards << Card.create(question: "This restuarant recently gave out free food that was as delicious as it was unhealthy ", answer: "the Melt")
 deck2.cards << Card.create(question: "Pop Eye the Sailorman loves this stuff", answer: "spinach" )
 deck2.cards << Card.create(question: " Italian cheesy pepporoni goodness", answer: "pizza")


 deck3.cards << Card.create(question: " This student is rumored to be the descendant of Einstein", answer: "andy archer" )
 deck3.cards << Card.create(question: " This teacher often wears elegant neon parachute pants and happens to have several pairs of them" , answer:"stu" )
 deck3.cards << Card.create(question: "SUDOCODE! teacher", answer: "brick" )
 deck3.cards << Card.create(question: "Rides an ecofriendly one wheeled segway", answer: "topher" )
 deck3.cards << Card.create(question: " Who is your daddy and what does he do ?", answer: "arnold " )

 deck4.cards << Card.create(question: "This Bass had a role in the TV show 'Silk Stockings'", answer: "neil")
   deck4.cards << Card.create(question: "This Bass is a cycling enthusiest who live in Austin, Texas for a year.", answer: "sam")

   deck4.cards << Card.create(question: "This bass taugh English in Korea", answer: "nick")

   deck4.cards << Card.create(question: "This Bass was a mountain guide", answer:"joe")

    deck4.cards << Card.create(question: "This Bass has a degree in Music", answer: "bill")

    deck4.cards << Card.create(question: "This Bass has had a huge amount of pets", answer: 'randall')

   deck4.cards << Card.create(question: "This Bass hasn't wiped in a disturbingly long time", answer: "chris")

   deck4.cards << Card.create(question: "This Bass is a huge anime and counter-strike fan", answer: "eddie")

   deck4.cards << Card.create(question: "This Bass does not have an 'r' in his last name", answer: 'ryan')

   deck4.cards << Card.create(question: "This Bass will not eat chicken and eggs in the same meal", answer: "valerie")