test = {
  'name': 'q3',
  'points': 6,
  'suites': [
    {
      'cases': [
        {
          'code': r"""
          >>> close(123)
          123
          
          >>> close(153)
          153
          
          >>> close(1523)
          153
          
          >>> close(15123)
          1123
          
          >>> close(11111111)
          11
          
          >>> close(985357)
          557
          
          >>> close(14735476)
          143576
          
          >>> close(812348567)
          1234567
          """,
          'hidden': False
        }
      ],
      'scored': True,
      'setup': 'from q3 import *',
      'teardown': '',
      'type': 'doctest'
    }
  ]
}
