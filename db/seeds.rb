deck1 = Deck.create(title: "Beers & Books")
deck2= Deck.create(title: "Num Nums")
deck3= Deck.create(title: "DBC 123")


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
