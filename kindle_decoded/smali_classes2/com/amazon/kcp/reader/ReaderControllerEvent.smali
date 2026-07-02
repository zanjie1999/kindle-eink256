.class public Lcom/amazon/kcp/reader/ReaderControllerEvent;
.super Ljava/lang/Object;
.source "ReaderControllerEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;
    }
.end annotation


# instance fields
.field private book:Lcom/amazon/kindle/model/content/ILocalBookInfo;

.field private publisher:Lcom/amazon/kcp/reader/ReaderController;

.field private type:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookInfo;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderControllerEvent;->type:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    .line 34
    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderControllerEvent;->publisher:Lcom/amazon/kcp/reader/ReaderController;

    .line 35
    iput-object p3, p0, Lcom/amazon/kcp/reader/ReaderControllerEvent;->book:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    return-void
.end method


# virtual methods
.method public getBook()Lcom/amazon/kindle/model/content/ILocalBookInfo;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderControllerEvent;->book:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    return-object v0
.end method

.method public getPublisher()Lcom/amazon/kcp/reader/ReaderController;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderControllerEvent;->publisher:Lcom/amazon/kcp/reader/ReaderController;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderControllerEvent;->type:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
