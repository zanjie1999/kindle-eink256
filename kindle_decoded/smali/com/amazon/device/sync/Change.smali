.class public Lcom/amazon/device/sync/Change;
.super Ljava/lang/Object;
.source "Change.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/Change$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCurrent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mPrevious:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mType:Lcom/amazon/device/sync/Change$Type;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/device/sync/Change$Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Lcom/amazon/device/sync/Change$Type;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/device/sync/Change;->mPrevious:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, Lcom/amazon/device/sync/Change;->mCurrent:Ljava/lang/Object;

    .line 39
    iput-object p3, p0, Lcom/amazon/device/sync/Change;->mType:Lcom/amazon/device/sync/Change$Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 82
    instance-of v0, p1, Lcom/amazon/device/sync/Change;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 84
    check-cast p1, Lcom/amazon/device/sync/Change;

    .line 85
    iget-object v0, p0, Lcom/amazon/device/sync/Change;->mPrevious:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/device/sync/Change;->getPrevious()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/Change;->getPrevious()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/sync/Change;->mCurrent:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/device/sync/Change;->getCurrent()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amazon/device/sync/Change;->mCurrent:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/sync/Change;->getCurrent()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/device/sync/Change;->mType:Lcom/amazon/device/sync/Change$Type;

    invoke-virtual {p1}, Lcom/amazon/device/sync/Change;->getType()Lcom/amazon/device/sync/Change$Type;

    move-result-object p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public getCurrent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/device/sync/Change;->mCurrent:Ljava/lang/Object;

    return-object v0
.end method

.method public getPrevious()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/device/sync/Change;->mPrevious:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Lcom/amazon/device/sync/Change$Type;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/device/sync/Change;->mType:Lcom/amazon/device/sync/Change$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/amazon/device/sync/Change;->mPrevious:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x35

    mul-int/lit8 v0, v0, 0x35

    .line 106
    iget-object v2, p0, Lcom/amazon/device/sync/Change;->mCurrent:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 107
    iget-object v1, p0, Lcom/amazon/device/sync/Change;->mType:Lcom/amazon/device/sync/Change$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
