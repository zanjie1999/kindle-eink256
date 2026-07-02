.class public Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;
.super Ljava/lang/Object;
.source "ReaderModeChangedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final bookId:Ljava/lang/String;

.field private final readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    .line 22
    iput-object p2, p0, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->bookId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
