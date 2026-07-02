.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock$SystemClockImpl;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemClockImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public elapsedRealtime()J
    .locals 2

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public epochTimeMillis()J
    .locals 2

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
