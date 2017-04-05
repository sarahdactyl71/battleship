require 'pry'

module CoordinateRules

  def locations
      {A1: grid[0][0],
       A2: grid[0][1],
       A3: grid[0][2],
       A4: grid[0][3],

       B1: grid[1][0],
       B2: grid[1][1],
       B3: grid[1][2],
       B4: grid[1][3],

       C1: grid[2][0],
       C2: grid[2][1],
       C3: grid[2][2],
       C4: grid[2][3],

       D1: grid[3][0],
       D2: grid[3][1],
       D3: grid[3][2],
       D4: grid[3][3]}
  end
end
