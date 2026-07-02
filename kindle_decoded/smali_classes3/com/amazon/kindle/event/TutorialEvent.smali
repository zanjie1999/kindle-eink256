.class public Lcom/amazon/kindle/event/TutorialEvent;
.super Ljava/lang/Object;
.source "TutorialEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private type:Lcom/amazon/kindle/krx/tutorial/events/EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/tutorial/events/EventType;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kindle/event/TutorialEvent;->type:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/kindle/krx/tutorial/events/EventType;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/event/TutorialEvent;->type:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
