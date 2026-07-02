.class public Lcom/amazon/kindle/krx/events/LeftNavEvent;
.super Lcom/amazon/kindle/krx/events/AbstractContentEvent;
.source "LeftNavEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/events/LeftNavEvent$NavigationType;
    }
.end annotation


# instance fields
.field private final type:Lcom/amazon/kindle/krx/events/LeftNavEvent$NavigationType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;ZLcom/amazon/kindle/krx/events/LeftNavEvent$NavigationType;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krx/events/AbstractContentEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Z)V

    .line 31
    iput-object p4, p0, Lcom/amazon/kindle/krx/events/LeftNavEvent;->type:Lcom/amazon/kindle/krx/events/LeftNavEvent$NavigationType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/kindle/krx/events/LeftNavEvent$NavigationType;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/LeftNavEvent;->type:Lcom/amazon/kindle/krx/events/LeftNavEvent$NavigationType;

    return-object v0
.end method
