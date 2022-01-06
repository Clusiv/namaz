import json

months = [
    'january',
    'february',
    'march',
    'april',
    'may',
    'june',
    'july',
    'august',
    'september',
    'october',
    'november',
    'december'
]

def parse_month(s):
    f = open(s + '.txt')
    l = f.readlines()
    month = {}
    count = 0
    day = 0

    for r in l:
        r = r.strip()
        if len(r) == 2:
            # print(r)
            day = r
            month[day] = {}
            count = 1
        elif len(r) > 3:
            # print(day)
            month[day][count] = r
            count += 1

    # print(month)
    return month

final_json = {}

for m in months:
    parsed_month = parse_month(m)
    final_json[m] = parsed_month

# print(json.dump(final_json))
out = open('output.json', 'w')
out.write(json.dumps(final_json))
