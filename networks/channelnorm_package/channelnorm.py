from torch.nn.modules.module import Module

from .functions.channelnorm import ChannelNormFunction

class ChannelNorm(Module):
    def __init__(self, norm_deg=2):
        super(ChannelNorm, self).__init__()
        self.norm_deg = norm_deg

    def forward(self, input1):

        result = ChannelNormFunction(self.norm_deg)(input1)

        return result
