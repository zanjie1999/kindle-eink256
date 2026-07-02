.class public Lcom/amazon/sitb/android/event/ApplicationPausedEvent;
.super Ljava/lang/Object;
.source "ApplicationPausedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ApplicationPausedEvent"

    return-object v0
.end method
