
# Architecture

architecture
/ˈɑːkɪtɛktʃə/
the complex or carefully designed structure of something.
the conceptual structure and logical organization of a computer or computer-based system.

> Almost everything we know about good software architecture 
> has to do with making software easy to change.
> - Mary Poppendieck

> All models are wrong, but some are useful. 
> -George E. P. Box

-------------------

Treat this material as suggestions and guidelines. 


## Rules / Guidelines
- Layer by domain (authentication, appointment, delivery, finance), 
    don't layer using types (model, data, view)
- Domain models / entities should not be Codable (Encodable & Decodable)
- Use Repositories to differential Data vs Domain. Data is the concrete persistence, Domain is business objects with rules and behavior. If you mix both, you're gonna have a hard time.
- Use anti-corruption layer when downstream (aka:consumer/customer) bounded context is not willing to conform to upstream for reasons like 
    * upstream frequent changes or 
    * upstream inconvenient, inefficient model
- Use open-host service pattern when trying to expose a protocol convenient for the consumers
- Logging can be implemented with decorators. Eg: Decorate a `Command` object with logging


## File/Folder structure
Organize folders to let reader easily understand architecture and domain

eg: User module (domain: User)
User
├── Api
├── Domain
├── Infrastructure
├── Presentation
└── Tests


## Concepts
- Domain Driven Design
- Clean architecture
- Hexagonal architecture
- Onion
- [Context Map](Files/context-map.png)


# Domain Driven Design

## Concepts

- Entities
- Value Objects
- Services - does not have an internal state. can group related functionality which serves Entities and Value Objects
    * domain service - use if it has domain rules but no state, 
    * application service - if it contains use case logic and no state
- Modules - 
    * communicational cohesion - operate on the same data, 
    * functional cohesion (best) - all parts work together to perform a well-defined task
- Aggregates - used to define object ownership and boundaries. a group of associated objects which are considered as one unit with regard to data changes. Each Aggregate has one root. The root is an Entity, and it is the only object accessible from outside
    eg: root aggregate: `Customer`, has `ContactInfo` & `Address`
- Factory - pure domain. useful for creating aggregates. create objects from scratch or from persistence (database). The Factory should create new objects, while the Repository should find already created objects.
    * Factory Method, 
    * Abstract Factory
- Repositories - can contain links to infra like db. encapsulate all the logic needed to obtain object references. The Factory should create new objects, while the Repository should find already created objects
- Bounded Context - is not a Module. Explicitly set boundaries in terms of team organization, usage within specific parts of the application, and physical manifestations such as code bases and database schemas
- Context Map


## Bounded context integration patterns

- Partnership - Bounded contexts are integrated in an ad hoc manner.
- Shared kernel - Two or more bounded contexts are integrated by sharing a limited overlapping model that belongs to all participating bounded contexts. purpose is to reduce duplication, but still keep two separate contexts
- Customer-Supplier - do not have a Shared Kernel.
- Conformist - The consumer conforms to the service provider’s model.  Conformist team cannot make changes to the kernel
- Anticorruption layer - The consumer translates the service provider’s model into a model that fits the consumer’s needs. stands between client model and external one. works as a two way translator between two domains and languages. Service will be a facade.
- Open-host service - The service provider implements a published language—a model optimized for its consumers’ needs.
- Separate ways - when we want the contexts to be highly independent and evolve separately. It’s less expensive to duplicate particular functionality than to collaborate and integrate it.


# Uncategorized notes

- Constraint - is a simple way to express an invariant. Whatever happens to the object data, the invariant is respected. This is simply done by putting the invariant logic into a Constraint
- Process - best way to implement is to use a Service. can encapsulate the algorithm in an object and use a Strategy
- Specification - is used to test an object to see if it satisfies a certain criteria
- middleware
- routing
- domain event
- A language in one bounded context can model the business domain to solve a particular problem. Another bounded context can represent the same business entities but model them to solve a different problem.


# Architectural decisions

Document the reasoning of why certain architecture is used