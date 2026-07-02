.class public Lcom/amazon/kcp/search/store/SearchNodeConstants;
.super Ljava/lang/Object;
.source "SearchNodeConstants.java"


# static fields
.field private static final BROWSE_NODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALLBACK_DEVICE_TYPE_ID:Ljava/lang/String; = "A3VNNDO1I14V03"

.field private static final FILTER_BROWSE_NODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SORT_TYPE_PARAMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/store/SearchNodeConstants;->BROWSE_NODES:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/store/SearchNodeConstants;->FILTER_BROWSE_NODES:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/store/SearchNodeConstants;->SORT_TYPE_PARAMS:Ljava/util/Map;

    .line 94
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A3VNNDO1I14V03"

    const-string v2, "2671536011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v2, "A2Y8LFC259B97P"

    const-string v3, "2865643011"

    invoke-static {v2, v0, v3}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v3, "A27Q6JKQZFA7TW"

    const-string v4, "8410374011"

    invoke-static {v3, v0, v4}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v4, "ASQWAX19D90II"

    const-string v5, "8521339011"

    invoke-static {v4, v0, v5}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v5, "A21OY5I3B2AR6V"

    const-string v6, "10703007011"

    invoke-static {v5, v0, v6}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v6, "A1AMD7CB8PU6RD"

    const-string v7, "10703008011"

    invoke-static {v6, v0, v7}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v7, "A24H326H7TXQ18"

    const-string v8, "15281879011"

    invoke-static {v7, v0, v8}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v8, "A2FMAG2O3DYXO"

    const-string v9, "10771584011"

    invoke-static {v8, v0, v9}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v9, "A15MU3EQ4XZ3Y5"

    const-string v10, "9804581011"

    invoke-static {v9, v0, v10}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v10, "A1G2XVSR1VA5DI"

    const-string v11, "9804579011"

    invoke-static {v10, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AO4A5QLO9663Q"

    const-string v12, "9804577011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A1Q878J3NE8P81"

    const-string v13, "9804575011"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A1FYY15VCM5WG1"

    const-string v14, "9804573011"

    invoke-static {v13, v0, v14}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A3IWJ2DYJQRA3T"

    const-string v15, "9804571011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "A2M1CHUCI6RHN8"

    move-object/from16 v16, v14

    const-string v14, "9804567011"

    invoke-static {v15, v0, v14}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A6IUL9CVJZXRR"

    move-object/from16 v17, v15

    const-string v15, "9804569011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "A3SSWQ04XYPXBH"

    move-object/from16 v18, v14

    const-string v14, "9804583011"

    invoke-static {v15, v0, v14}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A1BSQJM6E77NJE"

    move-object/from16 v19, v15

    const-string v15, "9804585011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "A2TX61L00VISA5"

    move-object/from16 v20, v14

    const-string v14, "9804587011"

    invoke-static {v15, v0, v14}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "AAJB0R7QJO84W"

    move-object/from16 v21, v15

    const-string v15, "9804565011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A390CW53E1P0G4"

    const-string v15, "9804528011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A324X3KDTS7NYA"

    const-string v15, "9804518011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A2LJ4A527WOX9J"

    const-string v15, "9804530011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "AZKAGPPWORIRY"

    const-string v15, "9804520011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "ADP5BND5THPTX"

    const-string v15, "9804522011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A2XZMRZUFPEDN4"

    const-string v15, "9804532011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A2D0X18EHNKEOJ"

    const-string v15, "9804535011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A1H8RTR0E3Y362"

    const-string v15, "9804524011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "AUNIXHOL9EVMI"

    const-string v15, "9804526011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A3JN21B5ZOWUAN"

    const-string v15, "9804537011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A1TG8VNKP4DSQR"

    const-string v15, "9804539011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A2TIAYXTNQWU3T"

    const-string v15, "9804516011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A3QXXOBP9MU5LY"

    const-string v15, "9804543011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "AOLDXB6WYN0UM"

    const-string v15, "9804555011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A2RJLFEH0UEKI9"

    const-string v15, "9804541011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A25521KS9QCAMD"

    const-string v15, "9804553011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A31POKKHZJR1J4"

    const-string v15, "9804557011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "AGQHFIWNI20PO"

    const-string v15, "9804559011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "AIE8AMJ60B7OK"

    const-string v15, "9804549011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A3ZKCWKG4097P"

    const-string v15, "9804551011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A27XSKZJJPVQA4"

    const-string v15, "9804561011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A1LCAPNEM1C36Z"

    const-string v15, "9804563011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A2H1I0AR67NWAC"

    const-string v15, "9804545011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "AE5DW8GVLP9NX"

    const-string v15, "9804547011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A1S15DUFSI8AUG"

    const-string v15, "11435294011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "ALYWZPYF4JAIT"

    move-object/from16 v22, v14

    const-string v14, "11435296011"

    invoke-static {v15, v0, v14}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v14, "A2M4YX06LWP8WI"

    move-object/from16 v23, v15

    const-string v15, "11435295011"

    invoke-static {v14, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "838826031"

    invoke-static {v1, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "838827031"

    invoke-static {v2, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "4236139031"

    invoke-static {v3, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "4286584031"

    invoke-static {v4, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5702053031"

    invoke-static {v5, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5702054031"

    invoke-static {v6, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "11180531031"

    invoke-static {v7, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5733196031"

    invoke-static {v8, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5159663031"

    invoke-static {v9, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5159662031"

    invoke-static {v10, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5159661031"

    invoke-static {v11, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5159660031"

    invoke-static {v12, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5159659031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5159658031"

    move-object/from16 v24, v13

    move-object/from16 v13, v16

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5159656031"

    move-object/from16 v13, v17

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5159657031"

    move-object/from16 v13, v18

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5159664031"

    move-object/from16 v13, v19

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5159665031"

    move-object/from16 v13, v20

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "5159666031"

    move-object/from16 v13, v21

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v15, "AAJB0R7QJO84W"

    const-string v13, "5159655031"

    invoke-static {v15, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A390CW53E1P0G4"

    const-string v15, "5159637031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A324X3KDTS7NYA"

    const-string v15, "5159632031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A2LJ4A527WOX9J"

    const-string v15, "5159638031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "AZKAGPPWORIRY"

    const-string v15, "5159633031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "ADP5BND5THPTX"

    const-string v15, "5159634031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A2XZMRZUFPEDN4"

    const-string v15, "5159639031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A2D0X18EHNKEOJ"

    const-string v15, "5159640031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A1H8RTR0E3Y362"

    const-string v15, "5159635031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "AUNIXHOL9EVMI"

    const-string v15, "5159636031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A3JN21B5ZOWUAN"

    const-string v15, "5159641031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A1TG8VNKP4DSQR"

    const-string v15, "5159642031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A2TIAYXTNQWU3T"

    const-string v15, "5159631031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A3QXXOBP9MU5LY"

    const-string v15, "5159644031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "AOLDXB6WYN0UM"

    const-string v15, "5159650031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A2RJLFEH0UEKI9"

    const-string v15, "5159643031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A25521KS9QCAMD"

    const-string v15, "5159649031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A31POKKHZJR1J4"

    const-string v15, "5159651031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "AGQHFIWNI20PO"

    const-string v15, "5159652031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "AIE8AMJ60B7OK"

    const-string v15, "5159647031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A3ZKCWKG4097P"

    const-string v15, "5159648031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A27XSKZJJPVQA4"

    const-string v15, "5159653031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A1LCAPNEM1C36Z"

    const-string v15, "5159654031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "A2H1I0AR67NWAC"

    const-string v15, "5159645031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "AE5DW8GVLP9NX"

    const-string v15, "5159646031"

    invoke-static {v13, v0, v15}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "6552353031"

    move-object/from16 v15, v22

    invoke-static {v15, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "6552355031"

    move-object/from16 v15, v23

    invoke-static {v15, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "6552354031"

    invoke-static {v14, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "838797031"

    invoke-static {v1, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "838798031"

    invoke-static {v2, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "4237188031"

    invoke-static {v3, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "4286595031"

    invoke-static {v4, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5702057031"

    invoke-static {v5, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5702058031"

    invoke-static {v6, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "11180504031"

    invoke-static {v7, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5733198031"

    invoke-static {v8, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5159735031"

    invoke-static {v9, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5159734031"

    invoke-static {v10, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5159733031"

    invoke-static {v11, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5159732031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5159731031"

    move-object/from16 v23, v12

    move-object/from16 v12, v24

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5159730031"

    move-object/from16 v12, v16

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5159728031"

    move-object/from16 v12, v17

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5159729031"

    move-object/from16 v12, v18

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5159736031"

    move-object/from16 v12, v19

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5159737031"

    move-object/from16 v12, v20

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "5159738031"

    move-object/from16 v12, v21

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v13, "AAJB0R7QJO84W"

    const-string v12, "5159727031"

    invoke-static {v13, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A390CW53E1P0G4"

    const-string v13, "5159709031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A324X3KDTS7NYA"

    const-string v13, "5159704031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A2LJ4A527WOX9J"

    const-string v13, "5159710031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "AZKAGPPWORIRY"

    const-string v13, "5159705031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "ADP5BND5THPTX"

    const-string v13, "5159706031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A2XZMRZUFPEDN4"

    const-string v13, "5159711031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A2D0X18EHNKEOJ"

    const-string v13, "5159712031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A1H8RTR0E3Y362"

    const-string v13, "5159707031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "AUNIXHOL9EVMI"

    const-string v13, "5159708031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A3JN21B5ZOWUAN"

    const-string v13, "5159713031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A1TG8VNKP4DSQR"

    const-string v13, "5159714031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A2TIAYXTNQWU3T"

    const-string v13, "5159703031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A3QXXOBP9MU5LY"

    const-string v13, "5159716031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "AOLDXB6WYN0UM"

    const-string v13, "5159722031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A2RJLFEH0UEKI9"

    const-string v13, "5159715031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A25521KS9QCAMD"

    const-string v13, "5159721031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A31POKKHZJR1J4"

    const-string v13, "5159723031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "AGQHFIWNI20PO"

    const-string v13, "5159724031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "AIE8AMJ60B7OK"

    const-string v13, "5159719031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A3ZKCWKG4097P"

    const-string v13, "5159720031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A27XSKZJJPVQA4"

    const-string v13, "5159725031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A1LCAPNEM1C36Z"

    const-string v13, "5159726031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "A2H1I0AR67NWAC"

    const-string v13, "5159717031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "AE5DW8GVLP9NX"

    const-string v13, "5159718031"

    invoke-static {v12, v0, v13}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "6552359031"

    move-object/from16 v13, v22

    invoke-static {v13, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "6552361031"

    invoke-static {v15, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "6552360031"

    invoke-static {v14, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "838888031"

    invoke-static {v1, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "838889031"

    invoke-static {v2, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "4236144031"

    invoke-static {v3, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "4286593031"

    invoke-static {v4, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5702061031"

    invoke-static {v5, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5702062031"

    invoke-static {v6, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "11180514031"

    invoke-static {v7, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5733200031"

    invoke-static {v8, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5159808031"

    invoke-static {v9, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5159807031"

    invoke-static {v10, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5159806031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5159805031"

    move-object/from16 v22, v11

    move-object/from16 v11, v23

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5159804031"

    move-object/from16 v11, v24

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5159803031"

    move-object/from16 v11, v16

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5159801031"

    move-object/from16 v11, v17

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5159802031"

    move-object/from16 v11, v18

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5159809031"

    move-object/from16 v11, v19

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5159810031"

    move-object/from16 v11, v20

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "5159811031"

    move-object/from16 v11, v21

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v12, "AAJB0R7QJO84W"

    const-string v11, "5159800031"

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A390CW53E1P0G4"

    const-string v12, "5159782031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A324X3KDTS7NYA"

    const-string v12, "5159777031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2LJ4A527WOX9J"

    const-string v12, "5159783031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AZKAGPPWORIRY"

    const-string v12, "5159778031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "ADP5BND5THPTX"

    const-string v12, "5159779031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2XZMRZUFPEDN4"

    const-string v12, "5159784031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2D0X18EHNKEOJ"

    const-string v12, "5159785031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1H8RTR0E3Y362"

    const-string v12, "5159780031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AUNIXHOL9EVMI"

    const-string v12, "5159781031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3JN21B5ZOWUAN"

    const-string v12, "5159786031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1TG8VNKP4DSQR"

    const-string v12, "5159787031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2TIAYXTNQWU3T"

    const-string v12, "5159776031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3QXXOBP9MU5LY"

    const-string v12, "5159789031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AOLDXB6WYN0UM"

    const-string v12, "5159795031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2RJLFEH0UEKI9"

    const-string v12, "5159788031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A25521KS9QCAMD"

    const-string v12, "5159794031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A31POKKHZJR1J4"

    const-string v12, "5159796031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AGQHFIWNI20PO"

    const-string v12, "5159797031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AIE8AMJ60B7OK"

    const-string v12, "5159792031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3ZKCWKG4097P"

    const-string v12, "5159793031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A27XSKZJJPVQA4"

    const-string v12, "5159798031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1LCAPNEM1C36Z"

    const-string v12, "5159799031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2H1I0AR67NWAC"

    const-string v12, "5159790031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AE5DW8GVLP9NX"

    const-string v12, "5159791031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552365031"

    invoke-static {v13, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552367031"

    invoke-static {v15, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552366031"

    invoke-static {v14, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "1350269031"

    invoke-static {v1, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "1350270031"

    invoke-static {v2, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "4236148031"

    invoke-static {v3, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "4286591031"

    invoke-static {v4, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5702069031"

    invoke-static {v5, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5702070031"

    invoke-static {v6, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "11180559031"

    invoke-static {v7, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5733204031"

    invoke-static {v8, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159952031"

    invoke-static {v9, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 299
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159951031"

    invoke-static {v10, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159950031"

    move-object/from16 v12, v22

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159949031"

    move-object/from16 v12, v23

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159948031"

    move-object/from16 v12, v24

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159947031"

    move-object/from16 v12, v16

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159945031"

    move-object/from16 v12, v17

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159946031"

    move-object/from16 v12, v18

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159953031"

    move-object/from16 v12, v19

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159954031"

    move-object/from16 v12, v20

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159955031"

    move-object/from16 v12, v21

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AAJB0R7QJO84W"

    const-string v12, "5159944031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A390CW53E1P0G4"

    const-string v12, "5159926031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A324X3KDTS7NYA"

    const-string v12, "5159921031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2LJ4A527WOX9J"

    const-string v12, "5159927031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AZKAGPPWORIRY"

    const-string v12, "5159922031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "ADP5BND5THPTX"

    const-string v12, "5159923031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2XZMRZUFPEDN4"

    const-string v12, "5159928031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2D0X18EHNKEOJ"

    const-string v12, "5159929031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1H8RTR0E3Y362"

    const-string v12, "5159924031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AUNIXHOL9EVMI"

    const-string v12, "5159925031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3JN21B5ZOWUAN"

    const-string v12, "5159930031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1TG8VNKP4DSQR"

    const-string v12, "5159931031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2TIAYXTNQWU3T"

    const-string v12, "5159920031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3QXXOBP9MU5LY"

    const-string v12, "5159933031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AOLDXB6WYN0UM"

    const-string v12, "5159939031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2RJLFEH0UEKI9"

    const-string v12, "5159932031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A25521KS9QCAMD"

    const-string v12, "5159938031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 326
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A31POKKHZJR1J4"

    const-string v12, "5159940031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AGQHFIWNI20PO"

    const-string v12, "5159941031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AIE8AMJ60B7OK"

    const-string v12, "5159936031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3ZKCWKG4097P"

    const-string v12, "5159937031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A27XSKZJJPVQA4"

    const-string v12, "5159942031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1LCAPNEM1C36Z"

    const-string v12, "5159943031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 332
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2H1I0AR67NWAC"

    const-string v12, "5159934031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AE5DW8GVLP9NX"

    const-string v12, "5159935031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552377031"

    invoke-static {v13, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552379031"

    invoke-static {v15, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 336
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552378031"

    invoke-static {v14, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "1343668031"

    invoke-static {v1, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "1343669031"

    invoke-static {v2, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "4236146031"

    invoke-static {v3, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "4286589031"

    invoke-static {v4, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5702065031"

    invoke-static {v5, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5702066031"

    invoke-static {v6, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 345
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "11180547031"

    invoke-static {v7, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5733202031"

    invoke-static {v8, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 347
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159880031"

    invoke-static {v9, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 348
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159879031"

    invoke-static {v10, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159878031"

    move-object/from16 v12, v22

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159877031"

    move-object/from16 v12, v23

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 351
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159876031"

    move-object/from16 v12, v24

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 352
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159875031"

    move-object/from16 v12, v16

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159873031"

    move-object/from16 v12, v17

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 354
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159874031"

    move-object/from16 v12, v18

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159881031"

    move-object/from16 v12, v19

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 356
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159882031"

    move-object/from16 v12, v20

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5159883031"

    move-object/from16 v12, v21

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AAJB0R7QJO84W"

    const-string v12, "5159872031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 359
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A390CW53E1P0G4"

    const-string v12, "5159854031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A324X3KDTS7NYA"

    const-string v12, "5159849031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 361
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2LJ4A527WOX9J"

    const-string v12, "5159855031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AZKAGPPWORIRY"

    const-string v12, "5159850031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 363
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "ADP5BND5THPTX"

    const-string v12, "5159851031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 364
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2XZMRZUFPEDN4"

    const-string v12, "5159856031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 365
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2D0X18EHNKEOJ"

    const-string v12, "5159857031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 366
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1H8RTR0E3Y362"

    const-string v12, "5159852031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 367
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AUNIXHOL9EVMI"

    const-string v12, "5159853031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3JN21B5ZOWUAN"

    const-string v12, "5159858031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 369
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1TG8VNKP4DSQR"

    const-string v12, "5159859031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2TIAYXTNQWU3T"

    const-string v12, "5159848031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 371
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3QXXOBP9MU5LY"

    const-string v12, "5159861031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 372
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AOLDXB6WYN0UM"

    const-string v12, "5159867031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 373
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2RJLFEH0UEKI9"

    const-string v12, "5159860031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 374
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A25521KS9QCAMD"

    const-string v12, "5159866031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 375
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A31POKKHZJR1J4"

    const-string v12, "5159868031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 376
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AGQHFIWNI20PO"

    const-string v12, "5159869031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 377
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AIE8AMJ60B7OK"

    const-string v12, "5159864031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 378
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3ZKCWKG4097P"

    const-string v12, "5159865031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A27XSKZJJPVQA4"

    const-string v12, "5159870031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 380
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1LCAPNEM1C36Z"

    const-string v12, "5159871031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 381
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2H1I0AR67NWAC"

    const-string v12, "5159862031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 382
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AE5DW8GVLP9NX"

    const-string v12, "5159863031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 383
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552371031"

    invoke-static {v13, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552373031"

    invoke-static {v15, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 385
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552372031"

    invoke-static {v14, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 388
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "1636997031"

    invoke-static {v1, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 389
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "1636985031"

    invoke-static {v2, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 390
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "4236150031"

    invoke-static {v3, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 391
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "4286587031"

    invoke-static {v4, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 392
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5702073031"

    invoke-static {v5, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 393
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5702074031"

    invoke-static {v6, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 394
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "11180570031"

    invoke-static {v7, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 395
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5733206031"

    invoke-static {v8, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 396
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5160024031"

    invoke-static {v9, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 397
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5160023031"

    invoke-static {v10, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5160022031"

    move-object/from16 v12, v22

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 399
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5160021031"

    move-object/from16 v12, v23

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 400
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5160020031"

    move-object/from16 v12, v24

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 401
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5160019031"

    move-object/from16 v12, v16

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 402
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5160017031"

    move-object/from16 v12, v17

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 403
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5160018031"

    move-object/from16 v12, v18

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 404
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5160025031"

    move-object/from16 v12, v19

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 405
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5160026031"

    move-object/from16 v12, v20

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 406
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5160027031"

    move-object/from16 v12, v21

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 407
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AAJB0R7QJO84W"

    const-string v12, "5160016031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 408
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A390CW53E1P0G4"

    const-string v12, "5159998031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 409
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A324X3KDTS7NYA"

    const-string v12, "5159993031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 410
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2LJ4A527WOX9J"

    const-string v12, "5159999031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 411
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AZKAGPPWORIRY"

    const-string v12, "5159994031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 412
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "ADP5BND5THPTX"

    const-string v12, "5159995031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 413
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2XZMRZUFPEDN4"

    const-string v12, "5160000031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2D0X18EHNKEOJ"

    const-string v12, "5160001031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 415
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1H8RTR0E3Y362"

    const-string v12, "5159996031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AUNIXHOL9EVMI"

    const-string v12, "5159997031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 417
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3JN21B5ZOWUAN"

    const-string v12, "5160002031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 418
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1TG8VNKP4DSQR"

    const-string v12, "5160003031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 419
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2TIAYXTNQWU3T"

    const-string v12, "5159992031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3QXXOBP9MU5LY"

    const-string v12, "5160005031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AOLDXB6WYN0UM"

    const-string v12, "5160011031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 422
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2RJLFEH0UEKI9"

    const-string v12, "5160004031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A25521KS9QCAMD"

    const-string v12, "5160010031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A31POKKHZJR1J4"

    const-string v12, "5160012031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 425
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AGQHFIWNI20PO"

    const-string v12, "5160013031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 426
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AIE8AMJ60B7OK"

    const-string v12, "5160008031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3ZKCWKG4097P"

    const-string v12, "5160009031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 428
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A27XSKZJJPVQA4"

    const-string v12, "5160014031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1LCAPNEM1C36Z"

    const-string v12, "5160015031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 430
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2H1I0AR67NWAC"

    const-string v12, "5160006031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 431
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AE5DW8GVLP9NX"

    const-string v12, "5160007031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 432
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552383031"

    invoke-static {v13, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552385031"

    invoke-static {v15, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 434
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552384031"

    invoke-static {v14, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 437
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5560486011"

    invoke-static {v1, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 438
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5560487011"

    invoke-static {v2, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 439
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "8445604011"

    invoke-static {v3, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 440
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "8521357011"

    invoke-static {v4, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 441
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "10703017011"

    invoke-static {v5, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 442
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "10703018011"

    invoke-static {v6, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 443
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "15281905011"

    invoke-static {v7, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 444
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "10771597011"

    invoke-static {v8, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 445
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802285011"

    invoke-static {v9, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 446
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802283011"

    invoke-static {v10, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 447
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802281011"

    move-object/from16 v12, v22

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 448
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802279011"

    move-object/from16 v12, v23

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 449
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802278011"

    move-object/from16 v12, v24

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802276011"

    move-object/from16 v12, v16

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 451
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802272011"

    move-object/from16 v12, v17

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 452
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802274011"

    move-object/from16 v12, v18

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 453
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802286011"

    move-object/from16 v12, v19

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 454
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802288011"

    move-object/from16 v12, v20

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 455
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802290011"

    move-object/from16 v12, v21

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 456
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AAJB0R7QJO84W"

    const-string v12, "9802271011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 457
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A390CW53E1P0G4"

    const-string v12, "9802239011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 458
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A324X3KDTS7NYA"

    const-string v12, "9802230011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 459
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2LJ4A527WOX9J"

    const-string v12, "9802241011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 460
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AZKAGPPWORIRY"

    const-string v12, "9802232011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 461
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "ADP5BND5THPTX"

    const-string v12, "9802234011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 462
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2XZMRZUFPEDN4"

    const-string v12, "9802243011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 463
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2D0X18EHNKEOJ"

    const-string v12, "9802244011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 464
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1H8RTR0E3Y362"

    const-string v12, "9802236011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 465
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AUNIXHOL9EVMI"

    const-string v12, "9802237011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 466
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3JN21B5ZOWUAN"

    const-string v12, "9802246011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 467
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1TG8VNKP4DSQR"

    const-string v12, "9802248011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 468
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2TIAYXTNQWU3T"

    const-string v12, "9802228011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 469
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3QXXOBP9MU5LY"

    const-string v12, "9802251011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 470
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AOLDXB6WYN0UM"

    const-string v12, "9802262011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 471
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2RJLFEH0UEKI9"

    const-string v12, "9802250011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 472
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A25521KS9QCAMD"

    const-string v12, "9802260011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 473
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A31POKKHZJR1J4"

    const-string v12, "9802264011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 474
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AGQHFIWNI20PO"

    const-string v12, "9802265011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AIE8AMJ60B7OK"

    const-string v12, "9802257011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 476
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3ZKCWKG4097P"

    const-string v12, "9802258011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 477
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A27XSKZJJPVQA4"

    const-string v12, "9802267011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 478
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1LCAPNEM1C36Z"

    const-string v12, "9802269011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 479
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2H1I0AR67NWAC"

    const-string v12, "9802253011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 480
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AE5DW8GVLP9NX"

    const-string v12, "9802255011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 481
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "11435314011"

    invoke-static {v13, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 482
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "11435316011"

    invoke-static {v15, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 483
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "11435315011"

    invoke-static {v14, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 486
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6066961011"

    invoke-static {v1, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 487
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6066946011"

    invoke-static {v2, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 488
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "8445602011"

    invoke-static {v3, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 489
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "8521370011"

    invoke-static {v4, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 490
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "10703012011"

    invoke-static {v5, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 491
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "10703013011"

    invoke-static {v6, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 492
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "15281889011"

    invoke-static {v7, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 493
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "10771592011"

    invoke-static {v8, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 494
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802878011"

    invoke-static {v9, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 495
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802877011"

    invoke-static {v10, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 496
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802876011"

    move-object/from16 v12, v22

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802875011"

    move-object/from16 v12, v23

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 498
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802874011"

    move-object/from16 v12, v24

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 499
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802873011"

    move-object/from16 v12, v16

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 500
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802871011"

    move-object/from16 v12, v17

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 501
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802872011"

    move-object/from16 v12, v18

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 502
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802879011"

    move-object/from16 v12, v19

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 503
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802880011"

    move-object/from16 v12, v20

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 504
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802881011"

    move-object/from16 v12, v21

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 505
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AAJB0R7QJO84W"

    const-string v12, "9802870011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 506
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A390CW53E1P0G4"

    const-string v12, "9802852011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 507
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A324X3KDTS7NYA"

    const-string v12, "9802847011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 508
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2LJ4A527WOX9J"

    const-string v12, "9802853011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 509
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AZKAGPPWORIRY"

    const-string v12, "9802848011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 510
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "ADP5BND5THPTX"

    const-string v12, "9802849011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 511
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2XZMRZUFPEDN4"

    const-string v12, "9802854011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 512
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2D0X18EHNKEOJ"

    const-string v12, "9802855011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 513
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1H8RTR0E3Y362"

    const-string v12, "9802850011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 514
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AUNIXHOL9EVMI"

    const-string v12, "9802851011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 515
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3JN21B5ZOWUAN"

    const-string v12, "9802856011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 516
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1TG8VNKP4DSQR"

    const-string v12, "9802857011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 517
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2TIAYXTNQWU3T"

    const-string v12, "9802846011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 518
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3QXXOBP9MU5LY"

    const-string v12, "9802859011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 519
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AOLDXB6WYN0UM"

    const-string v12, "9802865011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 520
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2RJLFEH0UEKI9"

    const-string v12, "9802858011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 521
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A25521KS9QCAMD"

    const-string v12, "9802864011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 522
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A31POKKHZJR1J4"

    const-string v12, "9802866011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 523
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AGQHFIWNI20PO"

    const-string v12, "9802867011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 524
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AIE8AMJ60B7OK"

    const-string v12, "9802862011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 525
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3ZKCWKG4097P"

    const-string v12, "9802863011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 526
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A27XSKZJJPVQA4"

    const-string v12, "9802868011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 527
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1LCAPNEM1C36Z"

    const-string v12, "9802869011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 528
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2H1I0AR67NWAC"

    const-string v12, "9802860011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 529
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AE5DW8GVLP9NX"

    const-string v12, "9802861011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 530
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "11435308011"

    invoke-static {v13, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 531
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "11435310011"

    invoke-static {v15, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 532
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "11435309011"

    invoke-static {v14, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 535
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6595000011"

    invoke-static {v1, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 536
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6594985011"

    invoke-static {v2, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 537
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "8445609011"

    invoke-static {v3, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 538
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "8521359011"

    invoke-static {v4, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 539
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "10703021011"

    invoke-static {v5, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 540
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "10703022011"

    invoke-static {v6, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 541
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "15281915011"

    invoke-static {v7, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 542
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "10771601011"

    invoke-static {v8, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 543
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802950011"

    invoke-static {v9, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 544
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802949011"

    invoke-static {v10, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802948011"

    move-object/from16 v12, v22

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 546
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802947011"

    move-object/from16 v12, v23

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 547
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802946011"

    move-object/from16 v12, v24

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 548
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802945011"

    move-object/from16 v12, v16

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 549
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802943011"

    move-object/from16 v12, v17

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 550
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802944011"

    move-object/from16 v12, v18

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 551
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802951011"

    move-object/from16 v12, v19

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 552
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802952011"

    move-object/from16 v12, v20

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 553
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "9802953011"

    move-object/from16 v12, v21

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 554
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AAJB0R7QJO84W"

    const-string v12, "9802942011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 555
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A390CW53E1P0G4"

    const-string v12, "9802924011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 556
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A324X3KDTS7NYA"

    const-string v12, "9802919011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 557
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2LJ4A527WOX9J"

    const-string v12, "9802925011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 558
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AZKAGPPWORIRY"

    const-string v12, "9802920011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 559
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "ADP5BND5THPTX"

    const-string v12, "9802921011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 560
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2XZMRZUFPEDN4"

    const-string v12, "9802926011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 561
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2D0X18EHNKEOJ"

    const-string v12, "9802927011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 562
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1H8RTR0E3Y362"

    const-string v12, "9802922011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 563
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AUNIXHOL9EVMI"

    const-string v12, "9802923011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 564
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3JN21B5ZOWUAN"

    const-string v12, "9802928011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 565
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1TG8VNKP4DSQR"

    const-string v12, "9802929011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 566
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2TIAYXTNQWU3T"

    const-string v12, "9802918011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 567
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3QXXOBP9MU5LY"

    const-string v12, "9802931011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 568
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AOLDXB6WYN0UM"

    const-string v12, "9802937011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 569
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2RJLFEH0UEKI9"

    const-string v12, "9802930011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 570
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A25521KS9QCAMD"

    const-string v12, "9802936011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 571
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A31POKKHZJR1J4"

    const-string v12, "9802938011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 572
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AGQHFIWNI20PO"

    const-string v12, "9802939011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 573
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AIE8AMJ60B7OK"

    const-string v12, "9802934011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 574
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3ZKCWKG4097P"

    const-string v12, "9802935011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 575
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A27XSKZJJPVQA4"

    const-string v12, "9802940011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 576
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1LCAPNEM1C36Z"

    const-string v12, "9802941011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 577
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2H1I0AR67NWAC"

    const-string v12, "9802932011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 578
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AE5DW8GVLP9NX"

    const-string v12, "9802933011"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 579
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "11435320011"

    invoke-static {v13, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 580
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "11435322011"

    invoke-static {v15, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 581
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "11435321011"

    invoke-static {v14, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 584
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "2360845051"

    invoke-static {v1, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 585
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "2360833051"

    invoke-static {v2, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 586
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3036782051"

    invoke-static {v3, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 587
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3050087051"

    invoke-static {v4, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 588
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3412763051"

    invoke-static {v5, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 589
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3412764051"

    invoke-static {v6, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 590
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "4648007051"

    invoke-static {v7, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 591
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3418787051"

    invoke-static {v8, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 592
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253298051"

    invoke-static {v9, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 593
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253297051"

    invoke-static {v10, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 594
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253296051"

    move-object/from16 v12, v22

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 595
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253295051"

    move-object/from16 v12, v23

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 596
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253294051"

    move-object/from16 v12, v24

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 597
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253293051"

    move-object/from16 v12, v16

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 598
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253291051"

    move-object/from16 v12, v17

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 599
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253292051"

    move-object/from16 v12, v18

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 600
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253299051"

    move-object/from16 v12, v19

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 601
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253300051"

    move-object/from16 v12, v20

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 602
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253301051"

    move-object/from16 v12, v21

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 603
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AAJB0R7QJO84W"

    const-string v12, "3253290051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 604
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A390CW53E1P0G4"

    const-string v12, "3253272051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 605
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A324X3KDTS7NYA"

    const-string v12, "3253267051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 606
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2LJ4A527WOX9J"

    const-string v12, "3253273051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 607
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AZKAGPPWORIRY"

    const-string v12, "3253268051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 608
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "ADP5BND5THPTX"

    const-string v12, "3253269051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 609
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2XZMRZUFPEDN4"

    const-string v12, "3253274051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 610
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2D0X18EHNKEOJ"

    const-string v12, "3253275051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 611
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1H8RTR0E3Y362"

    const-string v12, "3253270051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 612
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AUNIXHOL9EVMI"

    const-string v12, "3253271051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 613
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3JN21B5ZOWUAN"

    const-string v12, "3253276051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 614
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1TG8VNKP4DSQR"

    const-string v12, "3253277051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 615
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2TIAYXTNQWU3T"

    const-string v12, "3253266051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 616
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3QXXOBP9MU5LY"

    const-string v12, "3253279051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 617
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AOLDXB6WYN0UM"

    const-string v12, "3253285051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 618
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2RJLFEH0UEKI9"

    const-string v12, "3253278051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 619
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A25521KS9QCAMD"

    const-string v12, "3253284051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 620
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A31POKKHZJR1J4"

    const-string v12, "3253286051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 621
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AGQHFIWNI20PO"

    const-string v12, "3253287051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 622
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AIE8AMJ60B7OK"

    const-string v12, "3253282051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 623
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3ZKCWKG4097P"

    const-string v12, "3253283051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 624
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A27XSKZJJPVQA4"

    const-string v12, "3253288051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 625
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1LCAPNEM1C36Z"

    const-string v12, "3253289051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 626
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2H1I0AR67NWAC"

    const-string v12, "3253280051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 627
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AE5DW8GVLP9NX"

    const-string v12, "3253281051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 628
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3500999051"

    invoke-static {v13, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 629
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3501001051"

    invoke-static {v15, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 630
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3501000051"

    invoke-static {v14, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 633
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "2503380051"

    invoke-static {v1, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 634
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "2503365051"

    invoke-static {v2, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 635
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3036784051"

    invoke-static {v3, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 636
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3050091051"

    invoke-static {v4, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 637
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3412767051"

    invoke-static {v5, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 638
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3412768051"

    invoke-static {v6, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 639
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "4648039051"

    invoke-static {v7, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 640
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3418789051"

    invoke-static {v8, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 641
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253370051"

    invoke-static {v9, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 642
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253369051"

    invoke-static {v10, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 643
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253368051"

    move-object/from16 v12, v22

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 644
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253367051"

    move-object/from16 v12, v23

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 645
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253366051"

    move-object/from16 v12, v24

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 646
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253365051"

    move-object/from16 v12, v16

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 647
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253363051"

    move-object/from16 v12, v17

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 648
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253364051"

    move-object/from16 v12, v18

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 649
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253371051"

    move-object/from16 v12, v19

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 650
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253372051"

    move-object/from16 v12, v20

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 651
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3253373051"

    move-object/from16 v12, v21

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 652
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AAJB0R7QJO84W"

    const-string v12, "3253362051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 653
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A390CW53E1P0G4"

    const-string v12, "3253344051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 654
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A324X3KDTS7NYA"

    const-string v12, "3253339051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 655
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2LJ4A527WOX9J"

    const-string v12, "3253345051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 656
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AZKAGPPWORIRY"

    const-string v12, "3253340051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 657
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "ADP5BND5THPTX"

    const-string v12, "3253341051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 658
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2XZMRZUFPEDN4"

    const-string v12, "3253346051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 659
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2D0X18EHNKEOJ"

    const-string v12, "3253347051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 660
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1H8RTR0E3Y362"

    const-string v12, "3253342051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 661
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AUNIXHOL9EVMI"

    const-string v12, "3253343051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 662
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3JN21B5ZOWUAN"

    const-string v12, "3253348051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 663
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1TG8VNKP4DSQR"

    const-string v12, "3253349051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 664
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2TIAYXTNQWU3T"

    const-string v12, "3253338051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 665
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3QXXOBP9MU5LY"

    const-string v12, "3253351051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 666
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AOLDXB6WYN0UM"

    const-string v12, "3253357051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 667
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2RJLFEH0UEKI9"

    const-string v12, "3253350051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 668
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A25521KS9QCAMD"

    const-string v12, "3253356051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 669
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A31POKKHZJR1J4"

    const-string v12, "3253358051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 670
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AGQHFIWNI20PO"

    const-string v12, "3253359051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 671
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AIE8AMJ60B7OK"

    const-string v12, "3253354051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 672
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3ZKCWKG4097P"

    const-string v12, "3253355051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 673
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A27XSKZJJPVQA4"

    const-string v12, "3253360051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 674
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1LCAPNEM1C36Z"

    const-string v12, "3253361051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 675
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2H1I0AR67NWAC"

    const-string v12, "3253352051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 676
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AE5DW8GVLP9NX"

    const-string v12, "3253353051"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 677
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3501005051"

    invoke-static {v13, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 678
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3501007051"

    invoke-static {v15, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 679
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3501006051"

    invoke-static {v14, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 682
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "2503468051"

    invoke-static {v1, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 683
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "2503453051"

    invoke-static {v2, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 684
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3036786051"

    invoke-static {v3, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 685
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3050089051"

    invoke-static {v4, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 686
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3412771051"

    invoke-static {v5, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 687
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3412772051"

    invoke-static {v6, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 688
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "4648051051"

    invoke-static {v7, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 689
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3418791051"

    invoke-static {v8, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 690
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3501011051"

    invoke-static {v13, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 691
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3501013051"

    invoke-static {v15, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 692
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "3501012051"

    invoke-static {v14, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 695
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "4962983031"

    invoke-static {v1, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 696
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "4962953031"

    invoke-static {v2, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 697
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "4962933031"

    invoke-static {v3, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 698
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "4963001031"

    invoke-static {v4, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 699
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5702077031"

    invoke-static {v5, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 700
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5702078031"

    invoke-static {v6, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 701
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "11180582031"

    invoke-static {v7, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 702
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5733208031"

    invoke-static {v8, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 703
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5189533031"

    invoke-static {v9, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 704
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5189532031"

    invoke-static {v10, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 705
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5189531031"

    move-object/from16 v12, v22

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 706
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5189530031"

    move-object/from16 v12, v23

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 707
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5189529031"

    move-object/from16 v12, v24

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 708
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5189528031"

    move-object/from16 v12, v16

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 709
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5189526031"

    move-object/from16 v12, v17

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 710
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5189527031"

    move-object/from16 v12, v18

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 711
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5189534031"

    move-object/from16 v12, v19

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 712
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5189535031"

    move-object/from16 v12, v20

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 713
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "5189536031"

    move-object/from16 v12, v21

    invoke-static {v12, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 714
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AAJB0R7QJO84W"

    const-string v12, "5189525031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 715
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A390CW53E1P0G4"

    const-string v12, "5189507031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 716
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A324X3KDTS7NYA"

    const-string v12, "5189502031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 717
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2LJ4A527WOX9J"

    const-string v12, "5189508031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 718
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AZKAGPPWORIRY"

    const-string v12, "5189503031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 719
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "ADP5BND5THPTX"

    const-string v12, "5189504031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 720
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2XZMRZUFPEDN4"

    const-string v12, "5189509031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 721
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2D0X18EHNKEOJ"

    const-string v12, "5189510031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 722
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1H8RTR0E3Y362"

    const-string v12, "5189505031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 723
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AUNIXHOL9EVMI"

    const-string v12, "5189506031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 724
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3JN21B5ZOWUAN"

    const-string v12, "5189511031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 725
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1TG8VNKP4DSQR"

    const-string v12, "5189512031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 726
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2TIAYXTNQWU3T"

    const-string v12, "5189501031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 727
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3QXXOBP9MU5LY"

    const-string v12, "5189514031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 728
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AOLDXB6WYN0UM"

    const-string v12, "5189520031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 729
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2RJLFEH0UEKI9"

    const-string v12, "5189513031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 730
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A25521KS9QCAMD"

    const-string v12, "5189519031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 731
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A31POKKHZJR1J4"

    const-string v12, "5189521031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 732
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AGQHFIWNI20PO"

    const-string v12, "5189522031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 733
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AIE8AMJ60B7OK"

    const-string v12, "5189517031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 734
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A3ZKCWKG4097P"

    const-string v12, "5189518031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 735
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A27XSKZJJPVQA4"

    const-string v12, "5189523031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 736
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A1LCAPNEM1C36Z"

    const-string v12, "5189524031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 737
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "A2H1I0AR67NWAC"

    const-string v12, "5189515031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 738
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "AE5DW8GVLP9NX"

    const-string v12, "5189516031"

    invoke-static {v11, v0, v12}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 739
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552389031"

    invoke-static {v13, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 740
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552391031"

    invoke-static {v15, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 741
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "6552390031"

    invoke-static {v14, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 744
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v11, "123736071"

    invoke-static {v1, v0, v11}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 745
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "123724071"

    invoke-static {v2, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 746
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "432310071"

    invoke-static {v3, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 747
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "434077071"

    invoke-static {v4, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 748
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1473108071"

    invoke-static {v5, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 749
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1473109071"

    invoke-static {v6, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 750
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1840857071"

    invoke-static {v7, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 751
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1474899071"

    invoke-static {v8, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 752
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1397961071"

    invoke-static {v9, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 753
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1397960071"

    invoke-static {v10, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 754
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1397959071"

    move-object/from16 v2, v22

    invoke-static {v2, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 755
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1397958071"

    move-object/from16 v2, v23

    invoke-static {v2, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 756
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1397957071"

    move-object/from16 v2, v24

    invoke-static {v2, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 757
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1397956071"

    move-object/from16 v2, v16

    invoke-static {v2, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 758
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1397954071"

    move-object/from16 v2, v17

    invoke-static {v2, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 759
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1397955071"

    move-object/from16 v2, v18

    invoke-static {v2, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 760
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1397962071"

    move-object/from16 v2, v19

    invoke-static {v2, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 761
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1397963071"

    move-object/from16 v2, v20

    invoke-static {v2, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 762
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1397964071"

    move-object/from16 v2, v21

    invoke-static {v2, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 763
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "AAJB0R7QJO84W"

    const-string v2, "1397953071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 764
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A390CW53E1P0G4"

    const-string v2, "1397935071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 765
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A324X3KDTS7NYA"

    const-string v2, "1397930071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 766
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A2LJ4A527WOX9J"

    const-string v2, "1397936071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 767
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "AZKAGPPWORIRY"

    const-string v2, "1397931071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 768
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ADP5BND5THPTX"

    const-string v2, "1397932071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 769
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A2XZMRZUFPEDN4"

    const-string v2, "1397937071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 770
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A2D0X18EHNKEOJ"

    const-string v2, "1397938071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 771
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A1H8RTR0E3Y362"

    const-string v2, "1397933071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 772
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "AUNIXHOL9EVMI"

    const-string v2, "1397934071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 773
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A3JN21B5ZOWUAN"

    const-string v2, "1397939071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 774
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A1TG8VNKP4DSQR"

    const-string v2, "1397940071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 775
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A2TIAYXTNQWU3T"

    const-string v2, "1397929071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 776
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A3QXXOBP9MU5LY"

    const-string v2, "1397942071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 777
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "AOLDXB6WYN0UM"

    const-string v2, "1397948071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 778
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A2RJLFEH0UEKI9"

    const-string v2, "1397941071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 779
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A25521KS9QCAMD"

    const-string v2, "1397947071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 780
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A31POKKHZJR1J4"

    const-string v2, "1397949071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 781
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "AGQHFIWNI20PO"

    const-string v2, "1397950071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 782
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "AIE8AMJ60B7OK"

    const-string v2, "1397945071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 783
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A3ZKCWKG4097P"

    const-string v2, "1397946071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 784
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A27XSKZJJPVQA4"

    const-string v2, "1397951071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 785
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A1LCAPNEM1C36Z"

    const-string v2, "1397952071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 786
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A2H1I0AR67NWAC"

    const-string v2, "1397943071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 787
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "AE5DW8GVLP9NX"

    const-string v2, "1397944071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 788
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1499394071"

    invoke-static {v13, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 789
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1499396071"

    invoke-static {v15, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 790
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "1499395071"

    invoke-static {v14, v0, v1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 791
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "A2O85NMVNLPKVN"

    const-string v2, "1754382071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 795
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleUnlimited"

    const-string v2, "9045887011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 796
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PrimeReading"

    const-string v2, "14807080011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 797
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ComixologyUnlimied"

    const-string v2, "14610400011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 798
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Newsstand"

    const-string v2, "241646011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 799
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleVella"

    const-string v2, "21165462011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 800
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Audible"

    const-string v2, "6577679011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 801
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Romance"

    const-string v2, "158566011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 802
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "CrimeThrillerMystery"

    const-string v2, "157305011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 803
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "LiteratureFiction"

    const-string v2, "157028011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 804
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "SciFiFantasy"

    const-string v2, "668010011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 805
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BiographiesMemoirs"

    const-string v2, "154754011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 806
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "History"

    const-string v2, "156576011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 807
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BusinessInvesting"

    const-string v2, "154821011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 808
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ReligionSpirituality"

    const-string v2, "158280011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 809
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "HealthFitnessDieting"

    const-string v2, "156430011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 810
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "TeenYoungAdult"

    const-string v2, "3511261011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 812
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleUnlimited"

    const-string v2, "9209819011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 813
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PrimeReading"

    const-string v2, "19089906011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 814
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BiographiesMemoirs"

    const-string v2, "5783216011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 815
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BusinessInvesting"

    const-string v2, "5783471011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 816
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "HealthFitnessDieting"

    const-string v2, "5789081011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 817
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "History"

    const-string v2, "5789353011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 818
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "LiteratureFiction"

    const-string v2, "5790277011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 819
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "CrimeThrillerMystery"

    const-string v2, "5790756011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 820
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ReligionSpirituality"

    const-string v2, "5792663011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 821
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Romance"

    const-string v2, "5792807011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 822
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "SciFiFantasy"

    const-string v2, "5794194011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 823
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PoliticsSocialSciences"

    const-string v2, "5791286011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 825
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleUnlimited"

    const-string v2, "4768069031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 826
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PrimeReading"

    const-string v2, "12713393031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 827
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Newsstand"

    const-string v2, "341690031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 828
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Audible"

    const-string v2, "4824710031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 829
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BiographiesMemoirs"

    const-string v2, "362181031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 830
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BusinessInvesting"

    const-string v2, "362191031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 831
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "CrimeThrillerMystery"

    const-string v2, "362247031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 832
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "LiteratureFiction"

    const-string v2, "362270031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 833
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "HealthFitnessDieting"

    const-string v2, "362832031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 834
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "History"

    const-string v2, "362335031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 835
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ReligionSpirituality"

    const-string v2, "362663031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 836
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Romance"

    const-string v2, "362723031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 837
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "SciFiFantasy"

    const-string v2, "2967299031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 838
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "TeenYoungAdult"

    const-string v2, "3421426031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 840
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleUnlimited"

    const-string v2, "4729244031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 841
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PrimeReading"

    const-string v2, "13736834031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 842
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BiographiesMemoirs"

    const-string v2, "1637017031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 843
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BusinessInvesting"

    const-string v2, "1637021031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 844
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "HealthFamilyPersonalDevelopment"

    const-string v2, "1637089031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 845
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "History"

    const-string v2, "1637095031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 846
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "LiteratureFiction"

    const-string v2, "1637119031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 847
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "CrimeThrillerMystery"

    const-string v2, "1637083031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 848
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ReligionSpirituality"

    const-string v2, "1637142031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 849
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Romance"

    const-string v2, "1637156031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 850
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "FantasySicenceFictionHorror"

    const-string v2, "1637085031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 851
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ChildrenYoungAdult"

    const-string v2, "1637026031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 853
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleUnlimited"

    const-string v2, "3164900051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 854
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PrimeReading"

    const-string v2, "5594519051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 855
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Audible"

    const-string v2, "3186224051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 856
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BiographiesMemoirs"

    const-string v2, "2496753051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 857
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BusinessInvesting"

    const-string v2, "2496754051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 858
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "HealthFitnessDieting"

    const-string v2, "2496762051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 859
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "History"

    const-string v2, "2496763051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 860
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "LiteratureFiction"

    const-string v2, "2496765051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 861
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "CrimeThrillerMystery"

    const-string v2, "2496766051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 862
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ReligionSpirituality"

    const-string v2, "2496770051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 863
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Romance"

    const-string v2, "2496771051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 864
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "SciFiFantasy"

    const-string v2, "2496773051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 865
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "TeenYoungAdult"

    const-string v2, "2496776051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 867
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleUnlimited"

    const-string v2, "9258151011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 868
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BiographiesMemoirs"

    const-string v2, "6507979011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 869
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BusinessInvesting"

    const-string v2, "6507980011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 870
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ForeignLanguage"

    const-string v2, "7217460011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 871
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "History"

    const-string v2, "6507989011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 872
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "LiteratureFiction"

    const-string v2, "6507991011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 873
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "CrimeThrillerMystery"

    const-string v2, "6507992011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 874
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ReligionSpirituality"

    const-string v2, "6507996011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 875
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Romance"

    const-string v2, "6507997011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 876
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "SciFiFantasy"

    const-string v2, "6507999011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 877
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "TeenYoungAdult"

    const-string v2, "6508002011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 879
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleUnlimited"

    const-string v2, "4722442031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 880
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PrimeReading"

    const-string v2, "14808602031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 881
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BiographiesMemoirs"

    const-string v2, "1335546031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 882
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BusinessInvesting"

    const-string v2, "1335553031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 883
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "TeenYoungAdult"

    const-string v2, "13871604031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 884
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "HealthFamilyPersonalDevelopment"

    const-string v2, "1335570031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 885
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "History"

    const-string v2, "1335558031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 886
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "LiteratureFiction"

    const-string v2, "1335565031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 887
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "CrimeThrillerMystery"

    const-string v2, "1335566031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 888
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ReligionSpirituality"

    const-string v2, "1335568031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 889
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Romance"

    const-string v2, "1335569031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 890
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "FantasySicenceFictionHorror"

    const-string v2, "1335554031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 892
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleUnlimited"

    const-string v2, "9365943011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 893
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PrimeReading"

    const-string v2, "19553431011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 894
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BiographiesMemoirs"

    const-string v2, "5559833011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 895
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BusinessInvesting"

    const-string v2, "5559837011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 896
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "HealthFamily"

    const-string v2, "5559909011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 897
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "History"

    const-string v2, "5559928011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 898
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "LiteratureFiction"

    const-string v2, "5559953011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 899
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "CrimeThrillerMystery"

    const-string v2, "5559898011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 900
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ReligionSpirituality"

    const-string v2, "5559976011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 901
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Romance"

    const-string v2, "5559990011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 902
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "FantasySicenceFictionHorror"

    const-string v2, "5559904011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 903
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "TeenYoungAdult"

    const-string v2, "17295692011"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 905
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleUnlimited"

    const-string v2, "4787284031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 906
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PrimeReading"

    const-string v2, "12713397031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 907
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Audible"

    const-string v2, "15583761031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 908
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Newsstand"

    const-string v2, "530887031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 909
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "SelfHelp"

    const-string v2, "626077031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 910
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BiographiesMemoirs"

    const-string v2, "567112031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 911
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BusinessCareers"

    const-string v2, "567113031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 912
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "EnglishEbooks"

    const-string v2, "579956031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 913
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "LiteratureFiction"

    const-string v2, "567111031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 914
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "CrimeThrillerMystery"

    const-string v2, "567126031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 915
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PoliticsHistory"

    const-string v2, "567130031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 916
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ReligionSpirituality"

    const-string v2, "567133031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 917
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "SciFiFantasy"

    const-string v2, "567119031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 918
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "TravelTourism"

    const-string v2, "567132031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 920
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleUnlimited"

    const-string v2, "4662687031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 921
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PrimeReading"

    const-string v2, "14803912031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 922
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Newsstand"

    const-string v2, "695399031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 923
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BusinessInvesting"

    const-string v2, "892779031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 924
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "HealthFitnessDieting"

    const-string v2, "895405031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 925
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "History"

    const-string v2, "893016031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 926
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "LiteratureFiction"

    const-string v2, "894268031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 927
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "CrimeThrillerMystery"

    const-string v2, "895004031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 928
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ReligionSpirituality"

    const-string v2, "895075031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 929
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Romance"

    const-string v2, "894269031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 930
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "FantasySicenceFictionHorror"

    const-string v2, "895157031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 931
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ScienceTechnologyMedicine"

    const-string v2, "895899031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 932
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Sociology"

    const-string v2, "895887031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 934
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleUnlimited"

    const-string v2, "4724005031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 935
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PrimeReading"

    const-string v2, "14808851031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 936
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BiographiesMemoirs"

    const-string v2, "1338380031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 937
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BusinessInvesting"

    const-string v2, "1338381031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 938
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "TeenYoungAdult"

    const-string v2, "13871594031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 939
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "HealthFamilyPersonalDevelopment"

    const-string v2, "1338390031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 940
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "History"

    const-string v2, "1338392031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 941
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "LiteratureFiction"

    const-string v2, "1338396031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 942
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "CrimeThrillerMystery"

    const-string v2, "1338387031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 943
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ReligionSpirituality"

    const-string v2, "1338399031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 944
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Romance"

    const-string v2, "1338400031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 945
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "FantasySicenceFictionHorror"

    const-string v2, "1338389031"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 947
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleUnlimited"

    const-string v2, "3169286051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 948
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PrimeReading"

    const-string v2, "5304495051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 949
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ArtPhotography"

    const-string v2, "2291481051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 950
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BusinessInvesting"

    const-string v2, "2291905051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 951
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ComputerTechnology"

    const-string v2, "2291657051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 952
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "HealthFitnessDieting"

    const-string v2, "2292803051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 953
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "HistoryGeography"

    const-string v2, "2293076051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 954
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ForeignLanguageStudyReference"

    const-string v2, "2293396051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 955
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "LiteratureLiteraryCriticism"

    const-string v2, "2292699051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 956
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "ComicsGraphicNovels"

    const-string v2, "2293143051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 957
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "NonfictionJapaneseBook"

    const-string v2, "2291791051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 958
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "HobbiesPracticalUsesSportsOutdoors"

    const-string v2, "2292480051,2292479051"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 960
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "KindleUnlimited"

    const-string v2, "1338154071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 961
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "BiographiesMemoirs"

    const-string v2, "143175071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 962
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Childrens"

    const-string v2, "143276071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 963
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Fiction"

    const-string v2, "144154071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 964
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "History"

    const-string v2, "143428071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 965
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Literature"

    const-string v2, "144180071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 966
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "EconomicManagement"

    const-string v2, "143231071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 967
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PhilosophyReligion"

    const-string v2, "143452071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 968
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "Psychology"

    const-string v2, "143411071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 969
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "PsychologicalSelfHelpTesting"

    const-string v2, "143426071"

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V

    .line 972
    sget-object v0, Lcom/amazon/kcp/search/store/SearchNodeConstants;->SORT_TYPE_PARAMS:Ljava/util/Map;

    const-string v1, "SortByRelevance"

    const-string v2, "r"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v0, Lcom/amazon/kcp/search/store/SearchNodeConstants;->SORT_TYPE_PARAMS:Ljava/util/Map;

    const-string v1, "SortByCustomerReview"

    const-string v2, "c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v0, Lcom/amazon/kcp/search/store/SearchNodeConstants;->SORT_TYPE_PARAMS:Ljava/util/Map;

    const-string v1, "SortByPublishDate"

    const-string v2, "d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V
    .locals 1

    .line 982
    sget-object v0, Lcom/amazon/kcp/search/store/SearchNodeConstants;->BROWSE_NODES:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->getKey(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)V
    .locals 1

    .line 994
    sget-object v0, Lcom/amazon/kcp/search/store/SearchNodeConstants;->FILTER_BROWSE_NODES:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->getFilterBrowseNodeKey(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;
    .locals 1

    .line 986
    sget-object v0, Lcom/amazon/kcp/search/store/SearchNodeConstants;->BROWSE_NODES:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->getKey(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    .line 988
    sget-object p0, Lcom/amazon/kcp/search/store/SearchNodeConstants;->BROWSE_NODES:Ljava/util/Map;

    const-string v0, "A3VNNDO1I14V03"

    invoke-static {v0, p1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->getKey(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method private static getFilterBrowseNodeKey(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;
    .locals 1

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getKey(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;
    .locals 1

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSortTypeParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "r"

    if-nez p0, :cond_0

    return-object v0

    .line 1005
    :cond_0
    sget-object v1, Lcom/amazon/kcp/search/store/SearchNodeConstants;->SORT_TYPE_PARAMS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1006
    sget-object v0, Lcom/amazon/kcp/search/store/SearchNodeConstants;->SORT_TYPE_PARAMS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getStoreFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;
    .locals 1

    .line 998
    sget-object v0, Lcom/amazon/kcp/search/store/SearchNodeConstants;->FILTER_BROWSE_NODES:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->getFilterBrowseNodeKey(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
