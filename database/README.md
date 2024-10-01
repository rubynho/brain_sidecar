## Data normalization

There are 5 normalization forms, which are guidelines for designing data models. The far form applied the safer.

#### 1NF Rules

1. Using row order to convey information is not permitted
2. Mixing data types within the same column is not permitted
3. Having a table without a primary key is not permitted
4. Repeating groups are not permitted

#### 2NF Rule

Each non-key attribute must depend on the entire primary key.

#### 3NF Rule

Every non-key attribute in a table should depend on the key, the whole key, and nothing but the key.

A strong version called Boyce-Codd normal form exclude the `non-key` part from the phrase above, leaving:

Every attribute in a table should depend on the key, the whole key, and nothing but the key.

#### 4NF Rule

The only kinds of multivalued dependency allowed in a table are multivalued dependencies on the key.

#### 5NF Rule

It must not be possible to describe the table as being the logical result of joining some other tables together.
