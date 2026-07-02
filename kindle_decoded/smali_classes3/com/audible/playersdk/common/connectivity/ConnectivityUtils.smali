.class public final Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;
.super Ljava/lang/Object;
.source "ConnectivityUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/playersdk/common/connectivity/ConnectivityUtils$Companion;
    }
.end annotation


# static fields
.field private static final TYPE_ANY:I = -0x80000000


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;->context:Landroid/content/Context;

    .line 10
    const-class p1, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "LoggerFactory.getLogger(\u2026ctivityUtils::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private final isConnectedToNetworkType(I)Z
    .locals 6

    .line 28
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 30
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    if-eq p1, v3, :cond_1

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 37
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;->logger:Lorg/slf4j/Logger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    .line 40
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, v4

    const/4 p1, 0x2

    aput-object v0, v5, p1

    const-string p1, "Is connected to {} network? {}. Current active network info: {}"

    .line 37
    invoke-interface {v3, p1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_1

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;->logger:Lorg/slf4j/Logger;

    const-string v0, "No network connectivity exists"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_1
    return v1

    .line 28
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final isConnectedToAnyNetwork()Z
    .locals 1

    const/high16 v0, -0x80000000

    .line 20
    invoke-direct {p0, v0}, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;->isConnectedToNetworkType(I)Z

    move-result v0

    return v0
.end method

.method public final isConnectedToCellular()Z
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;->isConnectedToNetworkType(I)Z

    move-result v0

    return v0
.end method
