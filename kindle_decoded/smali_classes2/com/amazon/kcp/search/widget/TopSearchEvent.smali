.class public Lcom/amazon/kcp/search/widget/TopSearchEvent;
.super Ljava/lang/Object;
.source "TopSearchEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/amazon/kcp/search/widget/TopSearchEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/amazon/kcp/search/widget/TopSearchEvent;->type:I

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
