.class public Lcom/amazon/kindle/krx/events/ActiveAreaEvent;
.super Lcom/amazon/kindle/krx/events/AbstractContentEvent;
.source "ActiveAreaEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;
    }
.end annotation


# instance fields
.field private detail:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private type:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/krx/events/AbstractContentEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Z)V

    .line 66
    iput-object p3, p0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent;->type:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    .line 67
    iput-object p4, p0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent;->id:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent;->detail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent;->type:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    return-object v0
.end method
