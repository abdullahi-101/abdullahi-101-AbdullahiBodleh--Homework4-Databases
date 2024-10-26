-- 1. Insert the event for Fluffy on 2020-10-15
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

-- 2. Insert Hammy into petPet if not already present, and add an event for Hammy
INSERT INTO petPet (petname, owner, species, gender, birth, death)
VALUES ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30', NULL);

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

-- 3. Update Fluffy’s event to indicate she had 5 kittens, with 2 being male
UPDATE petEvent
SET remark = CONCAT(remark, '; had 5 kittens, 2 are male')
WHERE petname = 'Fluffy' AND eventdate = '2020-10-15';

-- 4. Add an event for Claws breaking a rib on 1997-08-03
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Claws', '1997-08-03', 'accident', 'broke a rib');

-- 5. Update Puffball’s death date to 2020-09-01
UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';

-- 6. Remove Harold’s dog from the database for GDPR compliance
DELETE FROM petPet
WHERE owner = 'Harold' AND species = 'dog';