import random

random.seed(0)


class FairRoulette():
    def __init__(self):
        self.pockets = []
        for i in range(1, 37):
            self.pockets.append(i)
        self.ball = None
        self.pocketOdds = len(self.pockets) - 1

    def spin(self):
        self.ball = random.choice(self.pockets)

    def betPocket(self, pocket, amt):
        if str(pocket) == str(self.ball):
            return amt * self.pocketOdds
        else:
            return -amt

    def __str__(self):
        return 'Fair Roulette'


class EuRoulette(FairRoulette):
    def __init__(self):
        FairRoulette.__init__(self)
        self.pockets.append('0')

    def __str__(self):
        return 'European Roulette'


class AmRoulette(EuRoulette):
    def __init__(self):
        EuRoulette.__init__(self)
        self.pockets.append('00')

    def __str__(self):
        return 'American Roulette'


def playRoulette(game, numSpins, pocket, bet, toPrint):
    totPocket = 0
    for i in range(numSpins):
        game.spin()
        totPocket += game.betPocket(pocket, bet)
    if toPrint:
        print('Expected return for ', game, ' betting', pocket, '=', str(100 * totPocket / numSpins) + '%')
    return (totPocket / numSpins)


fairGame = FairRoulette()
euGame = EuRoulette()
amGame = AmRoulette()
for numSpins in (100, 1000000):
    for i in range(3):
        print(numSpins, 'spins of each game')
        playRoulette(fairGame, numSpins, 2, 1, True)
        playRoulette(euGame, numSpins, 2, 1, True)
        playRoulette(amGame, numSpins, 2, 1, True)
        print()

# resultDict = {}
# games = (FairRoulette, EuRoulette, AmRoulette)
# for G in games:
#     resultDict[G().__str__()] = []
# for numSpins in (100, 1000, 10000):
#     print('\nSimulate betting a pocket for', numTrials, 'trails of', numSpins, 'spins each')
#     for G in games:
#         pocketReturns = findPocketReturn(G(), 20, numSpins, False)
#         mean, std = getMeanAndStd(pocketReturns)
#         resultDict[G().__str__()].append((numSpins, 100 * mean, 100 * std))
#         print('Exp. return for', G(), '=', str(round(100 * mean, 3))
#               + '%,' '+/-' + str(round(100 * 1.96 * std, 3))
#               + '% with 95% confidence')