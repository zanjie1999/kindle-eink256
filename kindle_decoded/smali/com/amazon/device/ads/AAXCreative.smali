.class final enum Lcom/amazon/device/ads/AAXCreative;
.super Ljava/lang/Enum;
.source "AAXCreative.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/AAXCreative;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_EXPAND1:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_EXPAND2:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_PLAY_AUDIO1:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_PLAY_AUDIO2:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_PLAY_VIDEO:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum HTML:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum MRAID1:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum MRAID2:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum REQUIRES_TRANSPARENCY:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum VIDEO_INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

.field private static final primaryCreativeTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 17
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const/4 v1, 0x0

    const-string v2, "HTML"

    const/16 v3, 0x3ef

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    .line 18
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const/4 v2, 0x1

    const-string v3, "MRAID1"

    const/16 v4, 0x3f8

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    .line 19
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const/4 v3, 0x2

    const-string v4, "MRAID2"

    const/16 v5, 0x3f9

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    .line 20
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const/4 v4, 0x3

    const-string v5, "INTERSTITIAL"

    const/16 v6, 0x3f0

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    .line 21
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const/4 v5, 0x4

    const-string v6, "CAN_PLAY_AUDIO1"

    const/16 v7, 0x3e9

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO1:Lcom/amazon/device/ads/AAXCreative;

    .line 22
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const/4 v6, 0x5

    const-string v7, "CAN_PLAY_AUDIO2"

    const/16 v8, 0x3ea

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO2:Lcom/amazon/device/ads/AAXCreative;

    .line 23
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const/4 v7, 0x6

    const-string v8, "CAN_EXPAND1"

    const/16 v9, 0x3eb

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND1:Lcom/amazon/device/ads/AAXCreative;

    .line 24
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const/4 v8, 0x7

    const-string v9, "CAN_EXPAND2"

    const/16 v10, 0x3ec

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND2:Lcom/amazon/device/ads/AAXCreative;

    .line 25
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const/16 v9, 0x8

    const-string v10, "CAN_PLAY_VIDEO"

    const/16 v11, 0x3f6

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_VIDEO:Lcom/amazon/device/ads/AAXCreative;

    .line 26
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const/16 v10, 0x9

    const-string v11, "VIDEO_INTERSTITIAL"

    const/16 v12, 0x406

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->VIDEO_INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    .line 27
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const/16 v11, 0xa

    const-string v12, "REQUIRES_TRANSPARENCY"

    const/16 v13, 0x407

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->REQUIRES_TRANSPARENCY:Lcom/amazon/device/ads/AAXCreative;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/device/ads/AAXCreative;

    .line 15
    sget-object v13, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO1:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO2:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND1:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND2:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_VIDEO:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->VIDEO_INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/device/ads/AAXCreative;->$VALUES:[Lcom/amazon/device/ads/AAXCreative;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->primaryCreativeTypes:Ljava/util/HashSet;

    .line 36
    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->primaryCreativeTypes:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->primaryCreativeTypes:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->primaryCreativeTypes:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->primaryCreativeTypes:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->VIDEO_INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/amazon/device/ads/AAXCreative;->id:I

    return-void
.end method

.method public static containsPrimaryCreativeType(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;)Z"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->primaryCreativeTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/ads/AAXCreative;

    .line 62
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getCreativeType(I)Lcom/amazon/device/ads/AAXCreative;
    .locals 1

    const/16 v0, 0x3ef

    if-eq p0, v0, :cond_6

    const/16 v0, 0x3f0

    if-eq p0, v0, :cond_5

    const/16 v0, 0x3f6

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3f8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3f9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x406

    if-eq p0, v0, :cond_1

    const/16 v0, 0x407

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 92
    :pswitch_0
    sget-object p0, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND2:Lcom/amazon/device/ads/AAXCreative;

    return-object p0

    .line 90
    :pswitch_1
    sget-object p0, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND1:Lcom/amazon/device/ads/AAXCreative;

    return-object p0

    .line 96
    :pswitch_2
    sget-object p0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO2:Lcom/amazon/device/ads/AAXCreative;

    return-object p0

    .line 94
    :pswitch_3
    sget-object p0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO1:Lcom/amazon/device/ads/AAXCreative;

    return-object p0

    .line 100
    :cond_0
    sget-object p0, Lcom/amazon/device/ads/AAXCreative;->REQUIRES_TRANSPARENCY:Lcom/amazon/device/ads/AAXCreative;

    return-object p0

    .line 88
    :cond_1
    sget-object p0, Lcom/amazon/device/ads/AAXCreative;->VIDEO_INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    return-object p0

    .line 84
    :cond_2
    sget-object p0, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    return-object p0

    .line 82
    :cond_3
    sget-object p0, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    return-object p0

    .line 98
    :cond_4
    sget-object p0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_VIDEO:Lcom/amazon/device/ads/AAXCreative;

    return-object p0

    .line 86
    :cond_5
    sget-object p0, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    return-object p0

    .line 80
    :cond_6
    sget-object p0, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/AAXCreative;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/device/ads/AAXCreative;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/AAXCreative;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/AAXCreative;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->$VALUES:[Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/AAXCreative;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/AAXCreative;

    return-object v0
.end method
