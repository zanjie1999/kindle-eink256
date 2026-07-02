.class Lcom/amazon/device/ads/Assets$CircuitBreaker;
.super Ljava/lang/Object;
.source "Assets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Assets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CircuitBreaker"
.end annotation


# instance fields
.field broken:Z


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/Assets;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Lcom/amazon/device/ads/Assets$CircuitBreaker;->broken:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/Assets$CircuitBreaker;)Z
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/amazon/device/ads/Assets$CircuitBreaker;->isBroken()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/Assets$CircuitBreaker;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/amazon/device/ads/Assets$CircuitBreaker;->breakCircuit()V

    return-void
.end method

.method private breakCircuit()V
    .locals 1

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/amazon/device/ads/Assets$CircuitBreaker;->broken:Z

    return-void
.end method

.method private isBroken()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/amazon/device/ads/Assets$CircuitBreaker;->broken:Z

    return v0
.end method
