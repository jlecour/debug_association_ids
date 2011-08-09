This app is an example of a situation where the association method in a `has_many :through` assoctaion brings the right records, but the singular \*_ids method does not.

We have :

* an Hotel model
* a BlueBroker model
* a Relation model

Hotels are associated to BlueBrokers through the Relation model. It's a polymorphic relation, since we can have different kind of Broker.

Relations have a status (0/-1/1) to tell if the relation is pending/rejected/accepted.

With the `:conditions` in the `has_many` statement, `BlueBroker.first.hotels` only returns hotels with accepted relations.

The issue is that `BlueBroker.first.hotels` returns ids for all the relations, regardless of the status of the relation.

It is verified with Rails **3.0.7** and **3.0.9**.

It is working OK with Rails **master** (37b77c6ae7effdba51ecd8b3b91e2cdb0020b6aa) .

I can't try with Rails v3.1.0.rc5 because when I `rake test`, I get an error "*Errors running test:units!*" with no logs or explanation.