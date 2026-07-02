.class public Lcom/amazon/kindle/krx/events/NavigationEvent;
.super Lcom/amazon/kindle/krx/events/AbstractContentEvent;
.source "NavigationEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;
    }
.end annotation


# instance fields
.field private newPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private type:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;Lcom/amazon/kindle/krx/events/EventStage;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p3, v0}, Lcom/amazon/kindle/krx/events/AbstractContentEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Z)V

    .line 73
    iput-object p2, p0, Lcom/amazon/kindle/krx/events/NavigationEvent;->type:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;Lcom/amazon/kindle/krx/events/EventStage;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/kindle/krx/events/NavigationEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;Lcom/amazon/kindle/krx/events/EventStage;)V

    .line 60
    iput-object p2, p0, Lcom/amazon/kindle/krx/events/NavigationEvent;->newPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method


# virtual methods
.method public getNavigationType()Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/NavigationEvent;->type:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    return-object v0
.end method

.method public getPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/NavigationEvent;->newPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method
