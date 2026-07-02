.class public final enum Lcom/amazon/device/ads/AdProperties$AdType;
.super Ljava/lang/Enum;
.source "AdProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/AdProperties$AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/AdProperties$AdType;

.field public static final enum IMAGE_BANNER:Lcom/amazon/device/ads/AdProperties$AdType;

.field public static final enum INTERSTITIAL:Lcom/amazon/device/ads/AdProperties$AdType;

.field public static final enum MODELESS_INTERSTITIAL:Lcom/amazon/device/ads/AdProperties$AdType;

.field public static final enum MRAID_1:Lcom/amazon/device/ads/AdProperties$AdType;

.field public static final enum MRAID_2:Lcom/amazon/device/ads/AdProperties$AdType;


# instance fields
.field private final adTypeMetricTag:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 35
    new-instance v0, Lcom/amazon/device/ads/AdProperties$AdType;

    const/4 v1, 0x0

    const-string v2, "IMAGE_BANNER"

    const-string v3, "Image Banner"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/device/ads/AdProperties$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/AdProperties$AdType;->IMAGE_BANNER:Lcom/amazon/device/ads/AdProperties$AdType;

    .line 41
    new-instance v0, Lcom/amazon/device/ads/AdProperties$AdType;

    const/4 v2, 0x1

    const-string v3, "MRAID_1"

    const-string v4, "MRAID 1.0"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/device/ads/AdProperties$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/AdProperties$AdType;->MRAID_1:Lcom/amazon/device/ads/AdProperties$AdType;

    .line 47
    new-instance v0, Lcom/amazon/device/ads/AdProperties$AdType;

    const/4 v3, 0x2

    const-string v4, "MRAID_2"

    const-string v5, "MRAID 2.0"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/device/ads/AdProperties$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/AdProperties$AdType;->MRAID_2:Lcom/amazon/device/ads/AdProperties$AdType;

    .line 51
    new-instance v0, Lcom/amazon/device/ads/AdProperties$AdType;

    const/4 v4, 0x3

    const-string v5, "INTERSTITIAL"

    const-string v6, "Interstitial"

    const-string v7, "i"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/amazon/device/ads/AdProperties$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/AdProperties$AdType;->INTERSTITIAL:Lcom/amazon/device/ads/AdProperties$AdType;

    .line 55
    new-instance v0, Lcom/amazon/device/ads/AdProperties$AdType;

    const/4 v5, 0x4

    const-string v6, "MODELESS_INTERSTITIAL"

    const-string v7, "Modeless Interstitial"

    const-string/jumbo v8, "mi"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/amazon/device/ads/AdProperties$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/AdProperties$AdType;->MODELESS_INTERSTITIAL:Lcom/amazon/device/ads/AdProperties$AdType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/device/ads/AdProperties$AdType;

    .line 30
    sget-object v7, Lcom/amazon/device/ads/AdProperties$AdType;->IMAGE_BANNER:Lcom/amazon/device/ads/AdProperties$AdType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/device/ads/AdProperties$AdType;->MRAID_1:Lcom/amazon/device/ads/AdProperties$AdType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/device/ads/AdProperties$AdType;->MRAID_2:Lcom/amazon/device/ads/AdProperties$AdType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/device/ads/AdProperties$AdType;->INTERSTITIAL:Lcom/amazon/device/ads/AdProperties$AdType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/device/ads/AdProperties$AdType;->$VALUES:[Lcom/amazon/device/ads/AdProperties$AdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/device/ads/AdProperties$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lcom/amazon/device/ads/AdProperties$AdType;->type:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/amazon/device/ads/AdProperties$AdType;->adTypeMetricTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/AdProperties$AdType;
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/device/ads/AdProperties$AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/AdProperties$AdType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/AdProperties$AdType;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/device/ads/AdProperties$AdType;->$VALUES:[Lcom/amazon/device/ads/AdProperties$AdType;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/AdProperties$AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/AdProperties$AdType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/device/ads/AdProperties$AdType;->type:Ljava/lang/String;

    return-object v0
.end method
