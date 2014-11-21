



  deck1 = Deck.create(title: "Beers & Books")
  deck2= Deck.create(title: "Num Nums")
  deck3= Deck.create(title: "DBC 123")


 deck1.cards << Card.create(question: "This tasty beer is a brown ale from England", answer:"New Castle" )
 deck1.cards << Card.create(question:"Hiney" , answer:"Heiniken" )
 deck1.cards << Card.create(question:" Champagne of beer" , answer: "Coors")
 deck1.cards << Card.create(question: " This book is a about  some kid that goes to Hogwarts and probably does NOT drink beer" , answer:"Harry Potter" )
 deck1.cards << Card.create(question: "This book is great to read with a beer and is meant for a soul in need of some chicken soup" , answer: "Chicken Soup for the Soul" )



 deck2.cards << Card.create(question: " This restaurant serves up burrito sized servings of sushi", answer: "Sushirittp" )
 deck2.cards << Card.create(question: "This restuarant recently gave out free food that was as delicious as it was unhealthy ", answer: " The Melt")
 deck2.cards << Card.create(question: "Pop Eye the Sailorman loves this stuff", answer: "Spinach" )
 deck2.cards << Card.create(question: " Italian cheesy pepporoni goodness", answer: "Pizza")
 deck2.cards << Card.create(question: " This place has an all you can eat lunch buffet with 5-Star rated wings and pretty ladies that are allergic to clothes" , answer: " Gold Club")

 deck3.cards << Card.create(question: " This student is rumored to be the descendant of Einstein", answer: "Andy Archer" )
 deck3.cards << Card.create(question: " This teacher often wears elegant neon parachute pants and happens to have several pairs of them" , answer:"Stu" )
 deck3.cards << Card.create(question: "SUDOCODE! teacher", answer: "Brick" )
 deck3.cards << Card.create(question: "Rides an ecofriendly one wheeled segway", answer: "Topher" )
 deck3.cards << Card.create(question: " Who is your daddy and what does he do ?", answer: "Arnold " )
