.class public Lcom/amazon/kindle/krx/events/OnBookOpenToSRLEvent;
.super Lcom/amazon/kindle/krx/events/AbstractContentEvent;
.source "OnBookOpenToSRLEvent.java"


# instance fields
.field private isNew:Z

.field private final startReadingPosition:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;ZLcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/events/OnBookOpenToSRLEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;ZLcom/amazon/kindle/krx/reader/IPosition;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;ZLcom/amazon/kindle/krx/reader/IPosition;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krx/events/AbstractContentEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Z)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/events/OnBookOpenToSRLEvent;->isNew:Z

    .line 43
    iput-object p4, p0, Lcom/amazon/kindle/krx/events/OnBookOpenToSRLEvent;->startReadingPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 44
    iput-boolean p5, p0, Lcom/amazon/kindle/krx/events/OnBookOpenToSRLEvent;->isNew:Z

    return-void
.end method


# virtual methods
.method public getStartReadingPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/OnBookOpenToSRLEvent;->startReadingPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNew()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/events/OnBookOpenToSRLEvent;->isNew:Z

    return v0
.end method
