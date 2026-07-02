.class public Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;
.super Ljava/lang/Object;
.source "ReaderLayoutEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;
    }
.end annotation


# instance fields
.field private eventType:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

.field private publisher:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->eventType:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    .line 28
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->publisher:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-void
.end method


# virtual methods
.method public getEventType()Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->eventType:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    return-object v0
.end method

.method public getPublisher()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->publisher:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
