.class Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy$1;
.super Ljava/lang/Object;
.source "TimedNonpersistingExpirationPolicy.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/service/IMonotonicRangeClock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeMillis()J
    .locals 4

    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method
