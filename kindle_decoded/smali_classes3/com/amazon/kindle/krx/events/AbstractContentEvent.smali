.class public abstract Lcom/amazon/kindle/krx/events/AbstractContentEvent;
.super Ljava/lang/Object;
.source "AbstractContentEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IContentEvent;


# instance fields
.field private bookId:Ljava/lang/String;

.field private isBlocking:Z

.field private stage:Lcom/amazon/kindle/krx/events/EventStage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/krx/events/AbstractContentEvent;->bookId:Ljava/lang/String;

    .line 37
    iput-boolean p3, p0, Lcom/amazon/kindle/krx/events/AbstractContentEvent;->isBlocking:Z

    .line 38
    iput-object p2, p0, Lcom/amazon/kindle/krx/events/AbstractContentEvent;->stage:Lcom/amazon/kindle/krx/events/EventStage;

    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/AbstractContentEvent;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getStage()Lcom/amazon/kindle/krx/events/EventStage;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/AbstractContentEvent;->stage:Lcom/amazon/kindle/krx/events/EventStage;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/events/AbstractContentEvent;->isBlocking:Z

    return v0
.end method
