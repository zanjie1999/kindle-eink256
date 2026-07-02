.class public final Lcom/amazon/kindle/ffs/model/WifiNetwork$Companion;
.super Ljava/lang/Object;
.source "WifiNetwork.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/model/WifiNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/model/WifiNetwork$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final signalForDecibels$ffs_debug(I)Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;
    .locals 1

    const/16 v0, -0x32

    if-le p1, v0, :cond_0

    .line 53
    sget-object p1, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;->THREE_LINES:Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    goto :goto_0

    :cond_0
    const/16 v0, -0x3c

    if-le p1, v0, :cond_1

    .line 54
    sget-object p1, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;->TWO_LINES:Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    goto :goto_0

    .line 55
    :cond_1
    sget-object p1, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;->ONE_LINE:Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    :goto_0
    return-object p1
.end method
