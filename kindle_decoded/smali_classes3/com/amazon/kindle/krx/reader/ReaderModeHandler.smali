.class public Lcom/amazon/kindle/krx/reader/ReaderModeHandler;
.super Ljava/lang/Object;
.source "ReaderModeHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderModeHandler;


# instance fields
.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final readerModeMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/amazon/kindle/krx/reader/ReaderModeHandler;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderModeHandler;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderModeHandler;->readerModeMapping:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderModeHandler;->readerModeMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderModeHandler;->readerModeMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    return-object p1

    .line 34
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    return-object p1
.end method

.method public setReaderMode(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V
    .locals 3

    .line 39
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/reader/ReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderModeHandler;->readerModeMapping:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderModeHandler;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v2, Lcom/amazon/kindle/krx/reader/ReaderModeEvent;

    invoke-direct {v2, v0, p2, p1}, Lcom/amazon/kindle/krx/reader/ReaderModeEvent;-><init>(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderModeHandler;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;

    invoke-direct {v1, p2, p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;-><init>(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
