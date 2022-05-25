"""
  I will simply use a list of dictionaries to represent the relational database to minimize external dependencies.
  I would normally use the dataframe object in the pandas library and use a jupyter notebook to run the code blocks.
"""

import csv
from decimal import *
import datetime
from itertools import groupby

# Objective 1

input = open('./input.csv')
csvin = csv.reader(input, delimiter=',', quotechar='"', skipinitialspace=True)

data = [row for row in csvin]

header = data.pop(0)

table = list()

for row in data:
  rowdict = dict(zip(header, row))
  rowdict['User ID'] = int(rowdict['User ID'])
  rowdict['Product'] = rowdict['Product'].strip()
  rowdict['Quantity'] = Decimal(rowdict['Quantity'])
  rowdict['Unit Price'] = Decimal(rowdict['Unit Price'])
  year, month, day = rowdict['Date'].split(sep='-')
  rowdict['Date'] = datetime.date(year=int(year), month=int(month), day=int(day))
  table.append(rowdict)

user_lowest_id = min([row['User ID'] for row in table])

values = [row['Quantity'] for row in table if row['User ID'] == user_lowest_id]

avg = sum(values) / len(values)

f1 = open('average_quantity.txt', 'w+')
f1.write(f"{user_lowest_id}, {avg:.0f}")
f1.close()

# Objective 2

revenues_by_date = dict()

for date, rows in groupby(sorted(table, key=lambda k: k['Date'], reverse=True), lambda x: x['Date']):
  revenues_by_product = dict()
  for product, rows in groupby(rows, lambda row: row['Product']):
    for row in rows:
      if product not in revenues_by_product.keys():
        revenues_by_product[product] = row['Unit Price'] * row['Quantity']
      else:
        revenues_by_product[product] = revenues_by_product[product] + row['Unit Price'] * row['Quantity']
      revenues_by_date[date] = revenues_by_product

f2 = open('top_products.txt', 'w+')

for row in revenues_by_date.keys():
  new_out = {}
  for date, revenues in revenues_by_date.items():
    new_max = 0
    which_product = list(revenues.keys())[0]
    for product, revenue in revenues.items():
      if revenue > new_max:
        new_max = revenue
        which_product = product
    new_out[date] = (which_product, new_max)

for key, values in new_out.items():
  f2.write(f"{key}, {values[0]}, {values[1]:.2f}\n")

f2.close()
