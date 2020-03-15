#Requires -version 7.0
#C = Clubs      --> cartoons
#D = Diamonds   --> girls
#H = Hearts     --> men
#S = Spades     --> sports
#01 --> one thing/1st place
#02 --> twins
#03 --> three things
#04 --> relating to four
#05 --> hands
#06 --> sexual
#07 --> The number itself
#08 --> food
#09 --> sleep
#10 --> 10/10
#11 --> jack/jester
#12 --> queen
#13 --> king

$cardMatrix = @{
    #Clubs = Cartoons
    'C01' = @{'Person' = 'One Punch Man';                   'Action' = 'Punching';      'Thing' = 'Air';                'Hint' = 'just one fist'}
    'C02' = @{'Person' = 'Chip&Dale';                       'Action' = 'Spreading';     'Thing' = 'Nuts';               'Hint' = 'testicals'}
    'C03' = @{'Person' = 'Huey Dewy Louie';                 'Action' = 'Stacking';      'Thing' = 'Ducks';              'Hint' = 'Donald'}
    'C04' = @{'Person' = 'TMNT';                            'Action' = 'Opening';       'Thing' = '[Man] hole';         'Hint' = 'group of 4 dudes'}
    'C05' = @{'Person' = 'Patrick';                         'Action' = 'Cheering';      'Thing' = 'Pants';              'Hint' = 'jazz hands up high'}
    'C06' = @{'Person' = 'Spnoge Bob';                      'Action' = 'Blowing';       'Thing' = 'Bubbles';            'Hint' = 'blowing'}
    'C07' = @{'Person' = 'Flinstones';                      'Action' = 'Driving';       'Thing' = 'Car';                'Hint' = 'Family of seven'}
    'C08' = @{'Person' = 'Cookie Monster';                  'Action' = 'Double Fisting';'Thing' = 'Cookies';            'Hint' = 'food snak'}
    'C09' = @{'Person' = 'Sleeping Beauty';                 'Action' = 'Waking';        'Thing' = 'Lips';               'Hint' = 'not sleeping'}
    'C10' = @{'Person' = 'Jessica Rabbit';                  'Action' = 'Kissing';       'Thing' = '[Roger] rabbit';     'Hint' = 'hot cartoon'}
    'C11' = @{'Person' = 'Jack Skellington';                'Action' = 'Carrying';      'Thing' = 'Sack';               'Hint' = 'halloween'}
    'C12' = @{'Person' = 'Maleficent';                      'Action' = 'Cursing';       'Thing' = 'Bird';               'Hint' = 'love hate'}
    'C13' = @{'Person' = 'King Kong';                       'Action' = 'Climbing';      'Thing' = 'Building';           'Hint' = 'building'}

    #Diamonds = Girls
    'D01' = @{'Person' = 'Wonder Woman';                    'Action' = 'Blocking';      'Thing' = 'Light';              'Hint' = 'one girl'}
    'D02' = @{'Person' = 'Lindsay Lohan';                   'Action' = 'Trapping';      'Thing' = 'Parents';            'Hint' = 'no divorce'}
    'D03' = @{'Person' = 'Cameron Diaz';                    'Action' = 'Gelling';       'Thing' = 'Hair';               'Hint' = '#1 = pee, #2 = poo, #3 = ?'}
    'D04' = @{'Person' = 'Jessica Alba (Invisible Woman)';  'Action' = 'Hiding';        'Thing' = 'Boobs';              'Hint' = 'number 4 on outfit'}
    'D05' = @{'Person' = 'Milla Jovovich (Lee Luu)';        'Action' = 'Showing';       'Thing' = 'Multipass';          'Hint' = 'hands holding up card'}
    'D06' = @{'Person' = 'Heather Graham';                  'Action' = 'Shagging';      'Thing' = 'Revolver';           'Hint' = 'Felicity Shagwell'}
    'D07' = @{'Person' = 'Lucy Lui';                        'Action' = 'Cutting';       'Thing' = 'Belt';               'Hint' = 'Movie poster upside down 7'}
    'D08' = @{'Person' = 'Heidi Klum';                      'Action' = 'Licking';       'Thing' = 'Burger';             'Hint' = 'not bitting food'}
    'D09' = @{'Person' = 'Mena Suvari';                     'Action' = 'Laying';        'Thing' = 'Petals';             'Hint' = 'rose bed'}
    'D10' = @{'Person' = 'Kate Upton';                      'Action' = 'Modelling';     'Thing' = 'Bikini';             'Hint' = '10 out of 10'}
    'D11' = @{'Person' = 'Sarah Silverman';                 'Action' = 'Grabbing';      'Thing' = 'Jack';               'Hint' = 'even though diamonds; about a guy'}
    'D12' = @{'Person' = 'Queen Elizabeth';                 'Action' = 'Drinking';      'Thing' = 'Tea';                'Hint' = 'really??? 12 = Q = ...'}
    'D13' = @{'Person' = 'Hunter King';                     'Action' = 'Hunting';       'Thing' = 'Bra';                'Hint' = 'last name'}

    #Hearts = men
    'H01' = @{'Person' = 'Lone Ranger';                     'Action' = 'Riding';        'Thing' = 'Horse';              'Hint' = 'one guy'}
    'H02' = @{'Person' = 'Weasley Twins';                   'Action' = 'Weaseling';     'Thing' = 'Wonkas';             'Hint' = 'Harry Potter'}
    'H03' = @{'Person' = 'Three Stooges';                   'Action' = 'Poking';        'Thing' = 'Eyes';               'Hint' = 'three guys'}
    'H04' = @{'Person' = 'Forest Gump';                     'Action' = 'Sitting';       'Thing' = 'Box Of Chocolate';   'Hint' = 'food = chocolate and name sounds like number 4'}
    'H05' = @{'Person' = 'Napoleon Dynamite';               'Action' = 'Dancing';       'Thing' = 'Vote';               'Hint' = 'jazz hands'}
    'H06' = @{'Person' = 'Thor';                            'Action' = 'Pulling';       'Thing' = 'Hammer';             'Hint' = 'Bicepts are sexy'}
    'H07' = @{'Person' = 'James Bond';                      'Action' = 'Shaking';       'Thing' = 'Martini';            'Hint' = 'double oh'}
    'H08' = @{'Person' = 'Jasson Biggs';                    'Action' = 'Pounding';      'Thing' = 'Pie';                'Hint' = 'food is pie but also sexual'}
    'H09' = @{'Person' = 'Nine Inch Nails';                 'Action' = 'Sleeping';      'Thing' = 'Lineup';             'Hint' = 'album: I can''t seem to wake up 2017'}
    'H10' = @{'Person' = 'Tenacious D';                     'Action' = 'Screaming';     'Thing' = 'Microphone';         'Hint' = 'mic on fire'}
    'H11' = @{'Person' = 'Jack Sparrow';                    'Action' = 'Stearing';      'Thing' = 'Ship';               'Hint' = 'not Jack Black'}
    'H12' = @{'Person' = 'Freddie Mercury';                 'Action' = 'Removing';      'Thing' = 'Crown';              'Hint' = 'male queen'}
    'H13' = @{'Person' = 'King Arthur';                     'Action' = 'Clapping';      'Thing' = 'Coconuts';           'Hint' = 'Monty Python'}

    #Spades = sports
    'S01' = @{'Person' = 'Usain Bolt';                      'Action' = 'Winning';       'Thing' = 'Gold';               'Hint' = '1st place race'}
    'S02' = @{'Person' = 'Sedin Twins';                     'Action' = 'Hugging';       'Thing' = 'Stick';              'Hint' = 'hockey twins'}
    'S03' = @{'Person' = 'Babe Ruth';                       'Action' = 'Holding';       'Thing' = 'Three bats';         'Hint' = 'pic has 3 items'}
    'S04' = @{'Person' = 'Tiger Woods';                     'Action' = 'Pointing';      'Thing' = 'GolfBall';           'Hint' = 'fore'}
    'S05' = @{'Person' = 'Michael Phelps';                  'Action' = 'Highfive';      'Thing' = 'Water';              'Hint' = 'swimming hand'}
    'S06' = @{'Person' = 'Michael Jordan';                  'Action' = 'Rimming';       'Thing' = 'Basketball';         'Hint' = 'sports rimming'}
    'S07' = @{'Person' = 'David Beckham';                   'Action' = 'Kicking';       'Thing' = 'Soccer Ball';        'Hint' = 'Soccer Jersy 7'}
    'S08' = @{'Person' = 'Mike Tyson';                      'Action' = 'Biting';        'Thing' = 'Ear';                'Hint' = 'not really food'}
    'S09' = @{'Person' = 'Wayne Gretzky';                   'Action' = 'Scoring';       'Thing' = 'Puck';               'Hint' = 'not sleeping (number 99)'}
    'S10' = @{'Person' = 'Anna Kournikova';                 'Action' = 'Squating';      'Thing' = 'Racquet';            'Hint' = '10 out of 10'}
    'S11' = @{'Person' = 'Jack Nicklaus';                   'Action' = 'Swinging';      'Thing' = 'Iron';               'Hint' = 'not a driver'}
    'S12' = @{'Person' = 'Serena Williams';                 'Action' = 'Serving';       'Thing' = 'Tennis Ball';        'Hint' = 'queen in sports'}
    'S13' = @{'Person' = 'LA Kings';                        'Action' = 'Lifting';       'Thing' = 'Stanley Cup';        'Hint' = '2014 winners'}
}

$cardMatrix.C01.Hint