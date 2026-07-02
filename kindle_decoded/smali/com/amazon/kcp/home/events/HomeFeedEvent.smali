.class public Lcom/amazon/kcp/home/events/HomeFeedEvent;
.super Ljava/lang/Object;
.source "HomeFeedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/amazon/kcp/home/events/HomeFeedEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/amazon/kcp/home/events/HomeFeedEvent;->type:I

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
