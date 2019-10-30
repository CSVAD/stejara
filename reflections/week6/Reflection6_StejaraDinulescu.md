## Reading Reflection Week 6
I was really interested in Alan Kay's theoretical explanation of tools as an extension of the body. This led me to think of interfaces as an extension of the human body as well, especially in conjunction with the two articles--at what point do we "embody" technology and neurologically think of it as a continuation of ourselves? This perfect "sweet spot" where technology blends with the human body and affords us greater opportunities is when HCI/the tool is extremely successful. I personally think the laptop and cell phone are examples of such tools; however, I would not say these tools are seamlessly embodied. What, then, constitutes an embodied tool? Will these tools perform better than say a laptop or a cell phone, because they are more of an extension of ourselves? In relation to the last article, then: can we create programming tools that are more "embodied"? Instead of relying on textual semantic or point-and-click interfaces or tools that allow for real-time manipulation, what does this mean in context to the body? Not just using our fingers but utilizing gestures, touch/auditory feedback? Will this open up more creative output, or will this hinder? 

## Notes
# "User Interface: A Personal View" by Alan Kay
- user interface on tools -> extension of the body
- ergonomics -> how the human body uses senses and limbs to work with tools
- dawn of user interface: when computer designers took into account the functioning mind of end users (shifting of interaction paradigm)
- message recovery: must first internalize the medium so that it can be subtracted out to leave the message behind (must "become" the medium if you use it)
- tools and learning to use the tool that reshapes us
	- press was so influential because it changed the thought patterns of others
- computer as a medium, not only a tool/vehicle
	- ability to read a medium means you can access materials and tools created by others
	- ability to write in a medium means you can generate materials and tools for others
- Piaget: kinesthetic stage, visual stage, symbolic stage
	- Bruner: enactive (doing), iconic (image), symbolic -> mentalities that go with Piaget's stages
	- need to integrate all of these in a powerful interface
- creativity done in the initial two mentalities (iconic and enactive)
	- enactive: know where you are, manipulate
	- iconic: recognize, compare, configure, concrete
	- symbolic: tie together long chains of reasoning, abstract
- "Doing with Images makes Symbols"
- modeless: user could get to the next thing desired without backing out (example: work in multiple windows)
- communication: 
	- selves
	- tools
	- colleagues and others
	- agents (computer processes that act as guide, coach, amanuensis)

# Instrumental Interaction: An Interaction Model for Designing Post-WIMP User Interfaces
- Instrumental Interaction: extends and generalizes principles of direct manipulation
	- two-handed input
	- augmented reality
	- defines a design space for new interaction techniques and properties for comparing them
	- describes GUI in terms of domain objects and interaction instruments (which aid in user interaction with domain objects)
- WIMP: Windows, Icons, Menus, Pointing
	- application objects displayed in document windows
	- objects can be selected, dragged, and dropped between different windows
	- commands invoked through menus or toolbars (dialog box)
- interaction model: sest of principles, rules, and properties that guide the design of an interface
	- combine interaction techniques in meaningful and consistent ways
	- look and feel of interaction from user perspective
	- focus on interface "design"
- differs from architectural model: funcitonal elements in the implementation of the interface and their relationships -> interface "development"
- model based approaches help bridge gap between interaction and architectural models (higher-level approach to the design of interactive systems)
- device-level models (logical input devices, for example) operate at a lower level of abstraction than interaction models
- understanding the role of physical devices in interaction tasks
- Shneiderman's principles of direct manipulation
	- continuous representation of objects of interest
	- physical actions on objects v. complex syntax (carrying out specific commands on additional interface elements as opposed to the direct objects) -> WIMP uses more complex syntax
	- fast, incremental, and reversible operations with an immediately-apparent effect on the objects of interest
	- layered or spiral approach to learning
- new interaction techniques show movement to post-WIMP models
	- ex. inspector windows that update with user input
	- more visuals, less windows and text
	- models should be descriptive (incorporating existing and new applications), comparitive (comparing alternative design), and generative (creation of new interaction techniques)
- manipulation of mediators (menus, dialog boxes, scrollbars) in WIMP interfaces don't follow principles of direct manipulation -> yields a limited sense of engagement
	- II matches experience in physical world of using tools (direct manipulation of objects in the physical world)
- domain objects (set of potential objects of interest for the user): attributes that describe characteristics (can be manipulated)
	- [this is really similar to max msp, which I would argue has really great user interface]
- interaction instrument: mediator or two-way transducer between user and domain object (transforms user's actions into commands on domain objects, providing feedack)
	- ex: scrolling
	- decomposes interaction into two layers: between user and the instrument (action/reaction) and instrument and domain object (command/response -> feedback)
- activation
	- spatial: requires it to be visible on screen
	- temporal: requires explicit action to trigger activation (slower, less direct)
- reification: turning concepts into objects (styles and materials that compleemnt the primary domain objects)
	- II: interaction instrument is the reification of one or more commands (ex. replacing traditional search and replace command into a search instrument)
- meta-instruments: instruments that operate on instruments (fixing, organization, etc -> menus, tool palettes to activate instruments)
- goal of defining properties of instruments is to explore spaces that are not mapped by existing instruments
	- degree of indirection: spatial and temporal offset (ex. real-time, delayed reaction)
	- degree of integration (control)
	- degree of compatibility
- systems use navigation instruments and filtering instruments
	- need a strong coupling of user actions and system response (small temporal offset)
	- manipulate simultaneously

# Alternative Programming Interfaces for Alternative Programmers
- makes suggestions for design of new programming interfaces for people coming to programming from different backgrounds
- physical interfaces: concern human body and the computer's body, as well as the affordances of each
	- text medium dominates physical interfaces, even if the output is art or music
	- text is used because it is 
		- unambiguous
		- emulates how we communicate with others
		- allows for syntax and semantics (level of abstraction)
	- alternative physical interfaces (activates visual and kinesthetic areas of brain):
		- visual interfaces (spatial input versus keyboard input)
		- touch screen interfaces (direct manipulation of screen)
		- arbitrary interfaces (user communicates through physical gestures, sounds, sensors)
			- continuous feedback loop between human and computer
			- live coding workflow
- conceptual interfaces: mental structures between programmer and computer (i.e. semantics of programming language)
- social interfaces: relationship to society (ex. programming together)
- alternative programming interfaces should allow for non-linear workflows and improvisation
- programming versus authoring
- causality flow is the norm in programming -> they are proposing a two-way causality flow (constraing system/solver -> ex. manipulating any shape in the workflow at any point in the recursion without altering the first one)
- shift from program construction to program transformation
	- think of programs operationally rather than reductively (think about relationships)
	- relativity: tweaking in relationship with other shapes
	- ontology: shifting between contexts



