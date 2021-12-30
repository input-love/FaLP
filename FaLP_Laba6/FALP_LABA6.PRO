DOMAINS
	nameState = string
	countPeople = integer
	language = string
	area = integer
	formOfStateBoard = string 
PREDICATES
	state(nameState, countPeople, language, area, formOfStateBoard)
	start
CLAUSES
        state("Russia", 1, "Russia", 9, "Totalitarizm").
	state("USA", 2, "English", 8, "Demokratiy").
	state("Ukrane", 3, "Ukrane", 7, "Avtolitarizm").
	state("BestStete", 4, "Lagua", 6, "Federativnoe").
	state("Wow", 5, "Wow", 5, "Monarhiy").
	state("Canada", 6, "English", 4, "Ynitarnoe").
	state("Uganda", 7, "Ugandskiy", 3, "Respublica").
	state("Figura", 8, "Figura", 2, "Totalitarizm").
	state("Augif", 9, "Augifskiy", 1, "Monarhiy").
	state("ChifKiff", 10, "ChifKiffskiy", 0, "Federativnoe").

	start:-write("Enter name your State"),nl,
	write("Enter the year state"), readln(MyStateName),
        	state(StateName, CountPeople, StateLanguage, Area, FormOfStateBoard), StateName=MyStateName,
        	write(CountPeople),nl,
        	write(StateLanguage),nl,
        	write(Area),nl,
        	write(FormOfStateBoard);
	write("Made!"),nl.
GOAL
	start.