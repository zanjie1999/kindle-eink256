.class public Lcom/amazon/kcp/reader/FontSizeChangeEvent;
.super Ljava/lang/Object;
.source "FontSizeChangeEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;
    }
.end annotation


# instance fields
.field private type:Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/amazon/kcp/reader/FontSizeChangeEvent;->type:Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/reader/FontSizeChangeEvent;->type:Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
