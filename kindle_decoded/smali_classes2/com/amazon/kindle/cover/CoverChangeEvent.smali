.class public Lcom/amazon/kindle/cover/CoverChangeEvent;
.super Ljava/lang/Object;
.source "CoverChangeEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private cover:Lcom/amazon/kindle/cover/ICover;

.field private isPathUpdated:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/cover/ICover;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/cover/CoverChangeEvent;->cover:Lcom/amazon/kindle/cover/ICover;

    .line 17
    iput-boolean p2, p0, Lcom/amazon/kindle/cover/CoverChangeEvent;->isPathUpdated:Z

    return-void
.end method


# virtual methods
.method public getCover()Lcom/amazon/kindle/cover/ICover;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverChangeEvent;->cover:Lcom/amazon/kindle/cover/ICover;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPathUpdated()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/amazon/kindle/cover/CoverChangeEvent;->isPathUpdated:Z

    return v0
.end method
