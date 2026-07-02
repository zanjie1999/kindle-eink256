.class final Lcom/amazon/device/sync/gear/RetryPolicy$1;
.super Ljava/lang/Object;
.source "RetryPolicy.java"

# interfaces
.implements Lcom/amazon/device/sync/gear/RetryPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/gear/RetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRetry(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getWaitTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
