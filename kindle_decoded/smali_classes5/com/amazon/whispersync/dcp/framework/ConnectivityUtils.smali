.class public final Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;
.super Ljava/lang/Object;
.source "ConnectivityUtils.java"


# static fields
.field public static final TYPE_ANY:I = -0x1

.field public static final TYPE_NON_METERED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_WAN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->TYPE_WAN:Ljava/util/List;

    new-array v0, v8, [Ljava/lang/Integer;

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->TYPE_NON_METERED:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConnected(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;)Z
    .locals 1

    const/4 v0, -0x1

    .line 46
    invoke-static {p0, v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->isConnected(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;I)Z

    move-result p0

    return p0
.end method

.method public static isConnected(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;I)Z
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->getActiveNetworkInfo()Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->getType()I

    move-result p0

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static isConnectedToAny(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 84
    invoke-static {p0, v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->isConnected(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs isConnectedToAny(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;[Ljava/lang/Integer;)Z
    .locals 4

    .line 52
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "types may not be empty"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEmpty([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 56
    invoke-static {p0, v3}, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->isConnected(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isConnectedToMeteredNetwork(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;)Z
    .locals 2

    .line 36
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->TYPE_WAN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    invoke-static {p0, v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->isConnectedToAny(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;[Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static isConnectedToNonMeteredNetwork(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;)Z
    .locals 2

    .line 41
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->TYPE_NON_METERED:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    invoke-static {p0, v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->isConnectedToAny(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;[Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static isWanNetworkType(I)Z
    .locals 1

    .line 99
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->TYPE_WAN:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isWanNetworkType(Ljava/lang/String;)Z
    .locals 0

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->isWanNetworkType(I)Z

    move-result p0

    return p0
.end method

.method public static isWifiConnected(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;)Z
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-static {p0, v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->isConnected(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;I)Z

    move-result p0

    return p0
.end method
