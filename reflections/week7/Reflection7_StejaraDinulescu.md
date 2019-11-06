## Reflection 7

	I really enjoy Bret Victor's statement that "a programming environment is a user interface for understanding a program", i.e. the environment must be designed to explain. This UI that he presents (simple labeling of the lines of a processing code) increases the readability exponentially in order to learn quicker and be able to use the language yourself. His examples throughout the reading (in which he outlines specific changes to the Processing code environment) were really helpful to visually understand what he was talking about, as well as grasp the impact that his suggestions would make. As a TA teaching Processing and OpenFrameworks in my undergrad, I really understood the points that he was making, especially because I have seen students struggle in the ways that he mentions. I further want to tie this in to Dynamic Brushes, as I feel like the DB system is a way that seamlessly integrates programming and drawing practices. I was really excited to see the layout of DB, as well as the results that the artists showed from the system (particularly Tritt's artwork, as this shows the impact of the mark-making power of the brushes in DB). I could not begin to comprehend how one could create those outputs in Processing or OpenFrameworks, or if it is even possible, for that matter. That is why I was extremely excited about models that integrate abstraction with drawing principles.

## Notes
# Some REflections on Designing Construction Kits for Kids
- 10 guiding principles: 
	- design for designers
		- learning through designing
		- Seymour Papert -> constructionist approach to learning and education
			- best learning experiences come when actively engaged in creating and designing (meaningfully)
		- LEGO construction kit as a model -> provide parts to build creations
		- same kit used for many things
	- low floor and wide walls
		- wide walls: wide range of different explorations -> greater diversity of outcomes
	- make powerful ideas salient, not forced
		- powerful ideas (Papert) -> ideas that can be used as tools to think with over a lifetime (ex. idea of "feedback" -> used across all disciplines)
		- directly teaching powerful ideas is not effective
			- instead, provide opportunities to encouter and use powerful ideas as natural part of design experiences
	- support many paths, many styles
		- priority on supporting users with different styles (patterners versus dramatists)
	- make it as simple as possible
		- "creeping featurism": advances in technology is correlated to adding more features
		- user experience is simple, able to accomplish complex tasks (reducing features often simplifies the user experience)
	- choose black boxes carefully
		- choice of the basic building blocks determines what kids are going to learn
	- a little bit of programming goes a long way
		- use of imperative (action-oriented) commands, simple control structures, basic conditionals, simple procedural abstractions
	- give people what they want, not what they ask for
		- User suggestions are not helpful (impractical, infeasible) -> often ask for more flexibility than is needed or desirable
		- More productive to observe users interacting with prototypes
	- invent things that you would want to use yourself
	- iterate
		- "tinkerability" -> trying out multiple alternatives, shifting directions, etc.
		- rapid prototyping that functions


# Learnable Programming
- Programming is aw ay of thinking, not a rote skill -> features are not important
- People understand what they can see
- Goals of programming: 
	- support and encourage powerful ways of thinking
	- enable programmers to see and understand the execution of their programs
	- therefore: change programming, not people
- programming environment should allow learner to: 
	- read vocabulary
		- learning how to program is not about guessing the functionality of the code (this is a barrier)
			- the environment is responsible for making meaning transparent
			- a programming environment is thus a user interface for understanding a program
			- show + tell (show in context)
	- follow the flow
		- when code is changed, update output continuously (see the steps)
		- make the code visible -> allows us to see patterns
		- make time tangible and visible (representation at multiple granularities)
	- see the state
		- show the data at all points in time
		- show comparisons (in context)
		- eliminate hidden state or show the state -> we must see the effect of a line of code
	- create by reacting
		- autocomplete -> get something on the screen as fast as possible
			- use UI elements to help -> i.e. menu to change the shape
		- dump the parts bucket onto the floor -> allows quick access, new ideas, understand what is available
	- create by abstracting
		- start constant, then vary (learning abstraction)
		- create and react at higher levels after exploration
			- develop trust in lower-level details
- language should provide: 
	- identity and metaphor
		- ex. turtle and Logo -> metaphors help with learning
		- ex. message and smalltalk
		- ex. cards and hypercard
		- ex. video game and Rocky's Boots (electricity/power source)
	- decomposition: approach complex problem by breaking it into simpler problems
		- learner discovers the need for subproceedures
	- recomposition
		- learning from others
	- readability
		- what you are coding needs to make sense

# Extending Manual Drawing Practices with Artist-Centric Programming Tools
- build procedures that enhance (rather than displace) manual art -> build languages/programming environments that align with how artists work
- procedural art -> risen from computers
	- support integration of procedural and manual art
- enhance and extend manual art by building environments that align with manual practices
	- interviewing artists -> led to personal drawing tool creation
		- themes on manual and procedural:
			- learning: through physical practice
				- tactile feedback, physical engagement
				- gestural expression, material engagement
			- process
				- working quickly and continuously (flow)
				- current programming: interupt flow by having to check references, etc.
			- expression
				- manual tools rpoduce different aesthetics with different artists
				- redesigning programming environments to rpeserve mannual interaction
- Dynamic Brushes: integrated programming and drawing environment for creating personal drawing tools that translate manual input to procedural forms and patterns
	- developed through iterative process
	- centered around creation of brushes -> tools that respond to external inputs and events
		- each is an instance of behavior
			- property mappings: declarative relationships between an input and output
			- states: start and end
			- transitions: movement between states
	- interface: code + manual drawing (can be used expcusively)
	- simple brushes
	- automated brushes (timing + automation)
	- spawning behaviors -> brushes that generate multiple autonomous drawing processes
		0 powerful enough to support behaviors that mimic professional procedural artwork
	- handoff between the interfaces
- evaluation criteria: 
	- compatibility with manual practice
	- expressiveness
	- learnability






