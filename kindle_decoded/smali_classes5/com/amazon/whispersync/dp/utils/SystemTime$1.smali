.class final Lcom/amazon/whispersync/dp/utils/SystemTime$1;
.super Ljava/lang/Object;
.source "SystemTime.java"

# interfaces
.implements Lcom/amazon/whispersync/dp/utils/SystemTime$TimeSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dp/utils/SystemTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()J
    .locals 2

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
