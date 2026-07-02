.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;
.super Ljava/lang/Object;
.source "NormalDistribution.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final transient CHAUVENET_CRITERION_CUTOFF:D = 0.5

.field private static final Z:[[D

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient mean:D

.field private numSamples:J

.field private runningSum:D

.field private runningSumOfSquares:D

.field private transient standardDeviation:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1f

    new-array v0, v0, [[D

    const/16 v1, 0xa

    new-array v2, v1, [D

    .line 288
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    new-array v2, v1, [D

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_13

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_16

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_18

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_19

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_1a

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_1b

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_1c

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_1d

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v1, v1, [D

    fill-array-data v1, :array_1e

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->Z:[[D

    return-void

    :array_0
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x3fe020c49ba5e354L    # 0.504
        0x3fe04189374bc6a8L    # 0.508
        0x3fe0624dd2f1a9fcL    # 0.512
        0x3fe083126e978d50L    # 0.516
        0x3fe0a305532617c2L    # 0.5199
        0x3fe0c3c9eecbfb16L    # 0.5239
        0x3fe0e48e8a71de6aL    # 0.5279
        0x3fe105532617c1beL    # 0.5319
        0x3fe12617c1bda512L    # 0.5359
    .end array-data

    :array_1
    .array-data 8
        0x3fe1460aa64c2f83L    # 0.5398
        0x3fe166cf41f212d7L    # 0.5438
        0x3fe18793dd97f62bL    # 0.5478
        0x3fe1a786c226809dL    # 0.5517
        0x3fe1c84b5dcc63f1L    # 0.5557
        0x3fe1e83e425aee63L    # 0.5596
        0x3fe20902de00d1b7L    # 0.5636
        0x3fe228f5c28f5c29L    # 0.5675
        0x3fe248e8a71de69bL    # 0.5714
        0x3fe268db8bac710dL    # 0.5753
    .end array-data

    :array_2
    .array-data 8
        0x3fe289a027525461L    # 0.5793
        0x3fe2a9930be0ded3L    # 0.5832
        0x3fe2c985f06f6944L    # 0.5871
        0x3fe2e978d4fdf3b6L    # 0.591
        0x3fe3089a02752546L    # 0.5948
        0x3fe3288ce703afb8L    # 0.5987
        0x3fe3487fcb923a2aL    # 0.6026
        0x3fe367a0f9096bbaL    # 0.6064
        0x3fe38793dd97f62bL    # 0.6103
        0x3fe3a6b50b0f27bbL    # 0.6141
    .end array-data

    :array_3
    .array-data 8
        0x3fe3c5d63886594bL    # 0.6179
        0x3fe3e4f765fd8adbL    # 0.6217
        0x3fe404189374bc6aL    # 0.6255
        0x3fe42339c0ebedfaL    # 0.6293
        0x3fe4425aee631f8aL    # 0.6331
        0x3fe460aa64c2f838L    # 0.6368
        0x3fe47fcb923a29c7L    # 0.6406
        0x3fe49e1b089a0275L    # 0.6443
        0x3fe4bc6a7ef9db23L    # 0.648
        0x3fe4dab9f559b3d0L    # 0.6517
    .end array-data

    :array_4
    .array-data 8
        0x3fe4f9096bb98c7eL    # 0.6554
        0x3fe51758e219652cL    # 0.6591
        0x3fe535a858793dd9L    # 0.6628
        0x3fe5532617c1bda5L    # 0.6664
        0x3fe570a3d70a3d71L    # 0.67
        0x3fe58e219652bd3cL    # 0.6736
        0x3fe5ab9f559b3d08L    # 0.6772
        0x3fe5c91d14e3bcd3L    # 0.6808
        0x3fe5e69ad42c3c9fL    # 0.6844
        0x3fe60346dc5d6388L    # 0.6879
    .end array-data

    :array_5
    .array-data 8
        0x3fe620c49ba5e354L    # 0.6915
        0x3fe63d70a3d70a3dL    # 0.695
        0x3fe65a1cac083127L    # 0.6985
        0x3fe675f6fd21ff2eL    # 0.7019
        0x3fe692a305532618L    # 0.7054
        0x3fe6ae7d566cf41fL    # 0.7088
        0x3fe6cb295e9e1b09L    # 0.7123
        0x3fe6e703afb7e910L    # 0.7157
        0x3fe7020c49ba5e35L    # 0.719
        0x3fe71de69ad42c3dL    # 0.7224
    .end array-data

    :array_6
    .array-data 8
        0x3fe738ef34d6a162L    # 0.7257
        0x3fe754c985f06f69L    # 0.7291
        0x3fe76fd21ff2e48fL    # 0.7324
        0x3fe78adab9f559b4L    # 0.7357
        0x3fe7a5119ce075f7L    # 0.7389
        0x3fe7c01a36e2eb1cL    # 0.7422
        0x3fe7da5119ce075fL    # 0.7454
        0x3fe7f487fcb923a3L    # 0.7486
        0x3fe80ded288ce704L    # 0.7517
        0x3fe828240b780347L    # 0.7549
    .end array-data

    :array_7
    .array-data 8
        0x3fe84189374bc6a8L    # 0.758
        0x3fe85aee631f8a09L    # 0.7611
        0x3fe874538ef34d6aL    # 0.7642
        0x3fe88db8bac710cbL    # 0.7673
        0x3fe8a71de69ad42cL    # 0.7704
        0x3fe8bfb15b573eabL    # 0.7734
        0x3fe8d844d013a92aL    # 0.7764
        0x3fe8f0d844d013a9L    # 0.7794
        0x3fe9089a02752546L    # 0.7823
        0x3fe9205bc01a36e3L    # 0.7852
    .end array-data

    :array_8
    .array-data 8
        0x3fe9381d7dbf4880L    # 0.7881
        0x3fe94fdf3b645a1dL    # 0.791
        0x3fe967a0f9096bbaL    # 0.7939
        0x3fe97e90ff972474L    # 0.7967
        0x3fe995810624dd2fL    # 0.7995
        0x3fe9ac710cb295eaL    # 0.8023
        0x3fe9c36113404ea5L    # 0.8051
        0x3fe9d97f62b6ae7dL    # 0.8078
        0x3fe9f06f69446738L    # 0.8106
        0x3fea068db8bac711L    # 0.8133
    .end array-data

    :array_9
    .array-data 8
        0x3fea1bda5119ce07L    # 0.8159
        0x3fea31f8a0902de0L    # 0.8186
        0x3fea474538ef34d7L    # 0.8212
        0x3fea5c91d14e3bcdL    # 0.8238
        0x3fea71de69ad42c4L    # 0.8264
        0x3fea86594af4f0d8L    # 0.8289
        0x3fea9ba5e353f7cfL    # 0.8315
        0x3feab020c49ba5e3L    # 0.834
        0x3feac49ba5e353f8L    # 0.8365
        0x3fead844d013a92aL    # 0.8389
    .end array-data

    :array_a
    .array-data 8
        0x3feaebedfa43fe5dL    # 0.8413
        0x3feb0068db8bac71L    # 0.8438
        0x3feb13404ea4a8c1L    # 0.8461
        0x3feb26e978d4fdf4L    # 0.8485
        0x3feb39c0ebedfa44L    # 0.8508
        0x3feb4c985f06f694L    # 0.8531
        0x3feb5f6fd21ff2e5L    # 0.8554
        0x3feb72474538ef35L    # 0.8577
        0x3feb844d013a92a3L    # 0.8599
        0x3feb9652bd3c3611L    # 0.8621
    .end array-data

    :array_b
    .array-data 8
        0x3feba858793dd97fL    # 0.8643
        0x3febba5e353f7ceeL    # 0.8665
        0x3febcb923a29c77aL    # 0.8686
        0x3febdd97f62b6ae8L    # 0.8708
        0x3febeecbfb15b574L    # 0.8729
        0x3febff2e48e8a71eL    # 0.8749
        0x3fec10624dd2f1aaL    # 0.877
        0x3fec20c49ba5e354L    # 0.879
        0x3fec3126e978d4feL    # 0.881
        0x3fec4189374bc6a8L    # 0.883
    .end array-data

    :array_c
    .array-data 8
        0x3fec5119ce075f70L    # 0.8849
        0x3fec617c1bda511aL    # 0.8869
        0x3fec710cb295e9e2L    # 0.8888
        0x3fec809d495182aaL    # 0.8907
        0x3fec8f5c28f5c28fL    # 0.8925
        0x3fec9eecbfb15b57L    # 0.8944
        0x3fecadab9f559b3dL    # 0.8962
        0x3fecbc6a7ef9db23L    # 0.898
        0x3fecca57a786c227L    # 0.8997
        0x3fecd916872b020cL    # 0.9015
    .end array-data

    :array_d
    .array-data 8
        0x3fece703afb7e910L    # 0.9032
        0x3fecf4f0d844d014L    # 0.9049
        0x3fed02de00d1b717L    # 0.9066
        0x3fed0ff972474539L    # 0.9082
        0x3fed1de69ad42c3dL    # 0.9099
        0x3fed2b020c49ba5eL    # 0.9115
        0x3fed381d7dbf4880L    # 0.9131
        0x3fed4538ef34d6a1L    # 0.9147
        0x3fed5182a9930be1L    # 0.9162
        0x3fed5dcc63f14120L    # 0.9177
    .end array-data

    :array_e
    .array-data 8
        0x3fed6a161e4f7660L    # 0.9192
        0x3fed765fd8adab9fL    # 0.9207
        0x3fed82a9930be0dfL    # 0.9222
        0x3fed8e219652bd3cL    # 0.9236
        0x3fed9a6b50b0f27cL    # 0.9251
        0x3feda5e353f7ced9L    # 0.9265
        0x3fedb15b573eab36L    # 0.9279
        0x3fedbc01a36e2eb2L    # 0.9292
        0x3fedc779a6b50b0fL    # 0.9306
        0x3fedd21ff2e48e8aL    # 0.9319
    .end array-data

    :array_f
    .array-data 8
        0x3feddcc63f141206L    # 0.9332
        0x3fede76c8b439581L    # 0.9345
        0x3fedf141205bc01aL    # 0.9357
        0x3fedfbe76c8b4396L    # 0.937
        0x3fee05bc01a36e2fL    # 0.9382
        0x3fee0f9096bb98c8L    # 0.9394
        0x3fee19652bd3c361L    # 0.9406
        0x3fee2339c0ebedfaL    # 0.9418
        0x3fee2c3c9eecbfb1L    # 0.9429
        0x3fee36113404ea4bL    # 0.9441
    .end array-data

    :array_10
    .array-data 8
        0x3fee3f141205bc02L    # 0.9452
        0x3fee4816f0068db9L    # 0.9463
        0x3fee5119ce075f70L    # 0.9474
        0x3fee594af4f0d845L    # 0.9484
        0x3fee624dd2f1a9fcL    # 0.9495
        0x3fee6a7ef9db22d1L    # 0.9505
        0x3fee72b020c49ba6L    # 0.9515
        0x3fee7ae147ae147bL    # 0.9525
        0x3fee83126e978d50L    # 0.9535
        0x3fee8b4395810625L    # 0.9545
    .end array-data

    :array_11
    .array-data 8
        0x3fee92a305532618L    # 0.9554
        0x3fee9ad42c3c9eedL    # 0.9564
        0x3feea2339c0ebee0L    # 0.9573
        0x3feea9930be0ded3L    # 0.9582
        0x3feeb0f27bb2fec5L    # 0.9591
        0x3feeb780346dc5d6L    # 0.9599
        0x3feebedfa43fe5c9L    # 0.9608
        0x3feec56d5cfaacdaL    # 0.9616
        0x3feecccccccccccdL    # 0.9625
        0x3feed35a858793deL    # 0.9633
    .end array-data

    :array_12
    .array-data 8
        0x3feed9e83e425aeeL    # 0.9641
        0x3feee075f6fd21ffL    # 0.9649
        0x3feee631f8a0902eL    # 0.9656
        0x3feeecbfb15b573fL    # 0.9664
        0x3feef27bb2fec56dL    # 0.9671
        0x3feef837b4a2339cL    # 0.9678
        0x3feefec56d5cfaadL    # 0.9686
        0x3fef04816f0068dcL    # 0.9693
        0x3fef096bb98c7e28L    # 0.9699
        0x3fef0f27bb2fec57L    # 0.9706
    .end array-data

    :array_13
    .array-data 8
        0x3fef14e3bcd35a86L    # 0.9713
        0x3fef19ce075f6fd2L    # 0.9719
        0x3fef1f8a0902de01L    # 0.9726
        0x3fef2474538ef34dL    # 0.9732
        0x3fef295e9e1b089aL    # 0.9738
        0x3fef2e48e8a71de7L    # 0.9744
        0x3fef333333333333L    # 0.975
        0x3fef381d7dbf4880L    # 0.9756
        0x3fef3c36113404eaL    # 0.9761
        0x3fef41205bc01a37L    # 0.9767
    .end array-data

    :array_14
    .array-data 8
        0x3fef4538ef34d6a1L    # 0.9772
        0x3fef4a2339c0ebeeL    # 0.9778
        0x3fef4e3bcd35a858L    # 0.9783
        0x3fef525460aa64c3L    # 0.9788
        0x3fef566cf41f212dL    # 0.9793
        0x3fef5a858793dd98L    # 0.9798
        0x3fef5e9e1b089a02L    # 0.9803
        0x3fef62b6ae7d566dL    # 0.9808
        0x3fef65fd8adab9f5L    # 0.9812
        0x3fef6a161e4f7660L    # 0.9817
    .end array-data

    :array_15
    .array-data 8
        0x3fef6d5cfaacd9e8L    # 0.9821
        0x3fef71758e219653L    # 0.9826
        0x3fef74bc6a7ef9dbL    # 0.983
        0x3fef780346dc5d64L    # 0.9834
        0x3fef7b4a2339c0ecL    # 0.9838
        0x3fef7e90ff972474L    # 0.9842
        0x3fef81d7dbf487fdL    # 0.9846
        0x3fef851eb851eb85L    # 0.985
        0x3fef886594af4f0eL    # 0.9854
        0x3fef8adab9f559b4L    # 0.9857
    .end array-data

    :array_16
    .array-data 8
        0x3fef8e219652bd3cL    # 0.9861
        0x3fef9096bb98c7e3L    # 0.9864
        0x3fef93dd97f62b6bL    # 0.9868
        0x3fef9652bd3c3611L    # 0.9871
        0x3fef99999999999aL    # 0.9875
        0x3fef9c0ebedfa440L    # 0.9878
        0x3fef9e83e425aee6L    # 0.9881
        0x3fefa0f9096bb98cL    # 0.9884
        0x3fefa36e2eb1c433L    # 0.9887
        0x3fefa5e353f7ced9L    # 0.989
    .end array-data

    :array_17
    .array-data 8
        0x3fefa858793dd97fL    # 0.9893
        0x3fefaacd9e83e426L    # 0.9896
        0x3fefac710cb295eaL    # 0.9898
        0x3fefaee631f8a090L    # 0.9901
        0x3fefb15b573eab36L    # 0.9904
        0x3fefb2fec56d5cfbL    # 0.9906
        0x3fefb573eab367a1L    # 0.9909
        0x3fefb71758e21965L    # 0.9911
        0x3fefb8bac710cb29L    # 0.9913
        0x3fefbb2fec56d5d0L    # 0.9916
    .end array-data

    :array_18
    .array-data 8
        0x3fefbcd35a858794L    # 0.9918
        0x3fefbe76c8b43958L    # 0.992
        0x3fefc01a36e2eb1cL    # 0.9922
        0x3fefc28f5c28f5c3L    # 0.9925
        0x3fefc432ca57a787L    # 0.9927
        0x3fefc5d63886594bL    # 0.9929
        0x3fefc779a6b50b0fL    # 0.9931
        0x3fefc84b5dcc63f1L    # 0.9932
        0x3fefc9eecbfb15b5L    # 0.9934
        0x3fefcb923a29c77aL    # 0.9936
    .end array-data

    :array_19
    .array-data 8
        0x3fefcd35a858793eL    # 0.9938
        0x3fefced916872b02L    # 0.994
        0x3fefcfaacd9e83e4L    # 0.9941
        0x3fefd14e3bcd35a8L    # 0.9943
        0x3fefd2f1a9fbe76dL    # 0.9945
        0x3fefd3c36113404fL    # 0.9946
        0x3fefd566cf41f213L    # 0.9948
        0x3fefd63886594af5L    # 0.9949
        0x3fefd7dbf487fcb9L    # 0.9951
        0x3fefd8adab9f559bL    # 0.9952
    .end array-data

    :array_1a
    .array-data 8
        0x3fefd97f62b6ae7dL    # 0.9953
        0x3fefdb22d0e56042L    # 0.9955
        0x3fefdbf487fcb924L    # 0.9956
        0x3fefdcc63f141206L    # 0.9957
        0x3fefde69ad42c3caL    # 0.9959
        0x3fefdf3b645a1cacL    # 0.996
        0x3fefe00d1b71758eL    # 0.9961
        0x3fefe0ded288ce70L    # 0.9962
        0x3fefe1b089a02752L    # 0.9963
        0x3fefe28240b78034L    # 0.9964
    .end array-data

    :array_1b
    .array-data 8
        0x3fefe353f7ced917L    # 0.9965
        0x3fefe425aee631f9L    # 0.9966
        0x3fefe4f765fd8adbL    # 0.9967
        0x3fefe5c91d14e3bdL    # 0.9968
        0x3fefe69ad42c3c9fL    # 0.9969
        0x3fefe76c8b439581L    # 0.997
        0x3fefe83e425aee63L    # 0.9971
        0x3fefe90ff9724745L    # 0.9972
        0x3fefe9e1b089a027L    # 0.9973
        0x3fefeab367a0f909L    # 0.9974
    .end array-data

    :array_1c
    .array-data 8
        0x3fefeab367a0f909L    # 0.9974
        0x3fefeb851eb851ecL    # 0.9975
        0x3fefec56d5cfaaceL    # 0.9976
        0x3fefed288ce703b0L    # 0.9977
        0x3fefed288ce703b0L    # 0.9977
        0x3fefedfa43fe5c92L    # 0.9978
        0x3fefeecbfb15b574L    # 0.9979
        0x3fefeecbfb15b574L    # 0.9979
        0x3fefef9db22d0e56L    # 0.998
        0x3feff06f69446738L    # 0.9981
    .end array-data

    :array_1d
    .array-data 8
        0x3feff06f69446738L    # 0.9981
        0x3feff141205bc01aL    # 0.9982
        0x3feff141205bc01aL    # 0.9982
        0x3feff212d77318fcL    # 0.9983
        0x3feff2e48e8a71deL    # 0.9984
        0x3feff2e48e8a71deL    # 0.9984
        0x3feff3b645a1cac1L    # 0.9985
        0x3feff3b645a1cac1L    # 0.9985
        0x3feff487fcb923a3L    # 0.9986
        0x3feff487fcb923a3L    # 0.9986
    .end array-data

    :array_1e
    .array-data 8
        0x3feff559b3d07c85L    # 0.9987
        0x3feff559b3d07c85L    # 0.9987
        0x3feff559b3d07c85L    # 0.9987
        0x3feff62b6ae7d567L    # 0.9988
        0x3feff62b6ae7d567L    # 0.9988
        0x3feff6fd21ff2e49L    # 0.9989
        0x3feff6fd21ff2e49L    # 0.9989
        0x3feff6fd21ff2e49L    # 0.9989
        0x3feff7ced916872bL    # 0.999
        0x3feff7ced916872bL    # 0.999
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSumOfSquares:D

    .line 54
    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSum:D

    return-void
.end method

.method private addValue(D)V
    .locals 4

    .line 175
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->numSamples:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->numSamples:J

    .line 177
    iget-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSum:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSum:D

    long-to-double v0, v0

    div-double/2addr v2, v0

    .line 178
    iput-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->mean:D

    .line 180
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSumOfSquares:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSumOfSquares:D

    .line 181
    invoke-direct {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->calculateStandardDeviation()D

    return-void
.end method

.method private calculateStandardDeviation()D
    .locals 8

    .line 213
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSumOfSquares:D

    iget-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSum:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    iget-wide v4, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->mean:D

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->numSamples:J

    long-to-double v6, v2

    mul-double v6, v6, v4

    mul-double v6, v6, v4

    add-double/2addr v0, v6

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->standardDeviation:D

    return-wide v0
.end method

.method private isOutlier(D)Z
    .locals 5

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getZFor(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double p1, p1, v0

    double-to-int v2, p1

    int-to-double v3, v2

    sub-double/2addr p1, v3

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 141
    sget-object p2, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->Z:[[D

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v2, v0, :cond_2

    aget-object v0, p2, v2

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 147
    aget-object p2, p2, v2

    aget-wide p1, p2, p1

    sub-double/2addr v3, p1

    .line 149
    iget-wide p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->numSamples:J

    long-to-double p1, p1

    mul-double v3, v3, p1

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v3, p1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private removeValue(D)V
    .locals 4

    .line 191
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->numSamples:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->numSamples:J

    .line 193
    iget-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSum:D

    sub-double/2addr v2, p1

    iput-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSum:D

    long-to-double v0, v0

    div-double/2addr v2, v0

    .line 194
    iput-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->mean:D

    .line 196
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSumOfSquares:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSumOfSquares:D

    .line 197
    invoke-direct {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->calculateStandardDeviation()D

    return-void
.end method


# virtual methods
.method public addToDistribution(D)Z
    .locals 1

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->addValue(D)V

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->isOutlier(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->removeValue(D)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public buildDistribution(Ljava/util/List;)[D
    .locals 4

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 81
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 82
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->buildDistribution([D)[D

    move-result-object p1

    return-object p1
.end method

.method public buildDistribution([D)[D
    .locals 8

    .line 97
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->numSamples:J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    .line 99
    iget-wide v4, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->numSamples:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 100
    iget-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSum:D

    aget-wide v4, p1, v1

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSum:D

    .line 101
    iget-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSumOfSquares:D

    aget-wide v4, p1, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSumOfSquares:D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-wide v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->runningSum:D

    long-to-double v3, v4

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->mean:D

    .line 104
    invoke-direct {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->calculateStandardDeviation()D

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    int-to-long v3, v2

    .line 109
    iget-wide v5, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->numSamples:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    .line 110
    aget-wide v3, p1, v2

    invoke-direct {p0, v3, v4}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->isOutlier(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    new-instance v3, Ljava/lang/Double;

    aget-wide v4, p1, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 118
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [D

    .line 119
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 120
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, p1, v0

    .line 121
    aget-wide v2, p1, v0

    invoke-direct {p0, v2, v3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->removeValue(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public getMean()D
    .locals 2

    .line 236
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->mean:D

    return-wide v0
.end method

.method public getNumSamples()J
    .locals 2

    .line 250
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->numSamples:J

    return-wide v0
.end method

.method public getZFor(D)D
    .locals 5

    .line 226
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->standardDeviation:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 229
    :cond_0
    iget-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->mean:D

    sub-double/2addr p1, v2

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    return-wide p1
.end method
