#################################################################################################
# The input is a number and the output is the original message. If the input is not padded ASCII#
# version of a message it returns the value: "This is not a padded ASCII string"                #
#################################################################################################
def ASCIIDepad(Number):
    ndigits=len(str(Number))
    n = ndigits % 3
    if (n > 0):
        print("This is not a padded ASCII string\n")
    else:
        L = [((Number - (Number % (1000^i)))/1000^i)%1000 - 100 for i in range(Number.ndigits()/3)]
        N = ""
        for i in range(Number.ndigits()/3):
            N = chr(L[i]) + N
        return(N)

b=[
17089298199140245689054146396696610382482599563869128220501355545433181167922449,
647456570985467791350694143163125775416153692645317710289110387858313344490925,
1571157443614188818570414758920219335869445581270513124197983268054945711653,
8680494616758492300153857128626182886244875669712992627620622363379875255673298873890889, 
3740176144174317705113182325751346003703203506734421120250951010374481407984708481673873
]
# encryption canNOT be larger than the modulus
n=[
138167915492481816745409346812614907970213601388948993432404324912548722779337539,
689234730968542058710415199123628060022111911748855188203650454001478717930441,
165927789907443292785652054606917804467309174081946624778696246358960638705571,
9707030033411217539906954498964338207893718488045203990403325340285676761140144260245667,
9702513696679623002778707839853209062395283481756367743103770927153046936810417007760591
]

e=5
x = crt(b,n); x
M=x.nth_root(e)
M=ASCIIDepad(M)
M