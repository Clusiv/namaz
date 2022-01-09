from peewee import CharField, Model, SqliteDatabase

db = SqliteDatabase('City.db')

class City(Model):
    name = CharField()
    namaztime = CharField()

    class Meta:
        database = db

db.create_tables([City])

if __name__ == '__main__':
    gro = City(name = 'Grozny', namaztime = open('Grozny/output.json').read())
    gro.save()
    malg = City(name = 'Malgobek', namaztime =  open('Grozny/output.json').read())
    malg.save()
