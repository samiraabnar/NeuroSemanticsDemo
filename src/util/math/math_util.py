import numpy as np


class MathUtil(object):

    @staticmethod
    def softmax(x):
        e_x = np.exp(x - np.max(x))
        return e_x / np.sum(e_x)

    @staticmethod
    def sigmoid(x):
        return 1.0 / (1 + np.exp(-x))

    @staticmethod
    def is_float(str):
        try:
            float(str)
            return True
        except ValueError:
            return False


if __name__ == '__main__':
    a = np.array([1,2,3])
    b = MathUtil.sigmoid(a)
    print(b)




