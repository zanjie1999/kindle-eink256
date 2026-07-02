.class public Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;
.super Ljava/lang/Object;
.source "SynchronizationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory$Sleeper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newAutoResetEvent(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;
    .locals 0

    .line 19
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;

    invoke-direct {p1}, Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;-><init>()V

    return-object p1
.end method

.method public newSleeper(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory$Sleeper;
    .locals 0

    .line 24
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory$Sleeper;

    invoke-direct {p1}, Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory$Sleeper;-><init>()V

    return-object p1
.end method
