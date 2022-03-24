# set display rows for pandas. If max_rows < len(df) the deciding numer is min(max_rows, min_rows), so contrary to logic, you would to increase both, or set max_rows > len(df)
pd.set_option("display.min_rows", 100)
pd.set_option("display.max_rows", 100)
