#Requires -version 7.0
#C = Clubs      --> cartoons
#D = Dimonds    --> girls
#H = Hearts     --> men
#S = Spades     --> sports
#01 -->
#02 --> twins
#03 -->
#04 -->
#05 --> hands
#06 --> sexual
#07 --> 
#08 --> food
#09 --> sleep
#10 --> 10/10
#11 --> jack/jester
#12 --> queen
#13 --> king

$cardMatrix = @{
    'C01' = @{'Person' = 'One Punch Man';   'Action' = 'Punching';      'Thing' = 'Air'}
    'C02' = @{'Person' = 'Chip&Dale';       'Action' = 'Spreading';     'Thing' = 'Nuts'}
    'C03' = @{'Person' = 'Huey Dewy Louie'; 'Action' = 'Stacking';      'Thing' = 'Ducks'}
    'C04' = @{'Person' = 'TMNT';            'Action' = 'Opening';       'Thing' = '[Man] hole'}
    'C05' = @{'Person' = 'Patrick';         'Action' = 'Cheering';      'Thing' = 'Pants'}
    'C06' = @{'Person' = 'Spnoge Bob';      'Action' = 'Blowing';       'Thing' = 'Bubbles'}
    'C07' = @{'Person' = 'Flinstones';      'Action' = 'Driving';       'Thing' = 'Car'}
    'C08' = @{'Person' = 'Cookie Monster';  'Action' = 'Double Fisting';'Thing' = 'Cookies'}
    'C09' = @{'Person' = 'Sleeping Beauty'; 'Action' = 'Waking';        'Thing' = 'Lips'}
    'C10' = @{'Person' = 'Jessica Rabbit';  'Action' = 'Kissing';       'Thing' = '[Roger] rabbit'}
    'C11' = @{'Person' = 'Jack Skellington';'Action' = 'Carrying';      'Thing' = 'Sack'}
    'C12' = @{'Person' = 'Maleficent';      'Action' = 'Cursing';       'Thing' = 'Bird'}
    'C13' = @{'Person' = 'King Kong';       'Action' = 'Climbing';      'Thing' = 'Building'}
}

$cardMatrix.C01.Thing