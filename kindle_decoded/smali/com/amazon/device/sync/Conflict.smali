.class public Lcom/amazon/device/sync/Conflict;
.super Ljava/lang/Object;
.source "Conflict.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCloud:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mCloudDeleted:Z

.field private final mLocal:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mLocalDeleted:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZTT;Z)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/device/sync/Conflict;->mLocal:Ljava/lang/Object;

    .line 21
    iput-boolean p2, p0, Lcom/amazon/device/sync/Conflict;->mLocalDeleted:Z

    .line 22
    iput-object p3, p0, Lcom/amazon/device/sync/Conflict;->mCloud:Ljava/lang/Object;

    .line 23
    iput-boolean p4, p0, Lcom/amazon/device/sync/Conflict;->mCloudDeleted:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 68
    instance-of v0, p1, Lcom/amazon/device/sync/Conflict;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 70
    check-cast p1, Lcom/amazon/device/sync/Conflict;

    .line 71
    iget-object v0, p0, Lcom/amazon/device/sync/Conflict;->mLocal:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/device/sync/Conflict;->getLocal()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/Conflict;->getLocal()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/device/sync/Conflict;->mLocalDeleted:Z

    invoke-virtual {p1}, Lcom/amazon/device/sync/Conflict;->isLocalDeleted()Z

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/amazon/device/sync/Conflict;->mCloud:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/device/sync/Conflict;->getCloud()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amazon/device/sync/Conflict;->mCloud:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/sync/Conflict;->getCloud()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/device/sync/Conflict;->mCloudDeleted:Z

    invoke-virtual {p1}, Lcom/amazon/device/sync/Conflict;->isCloudDeleted()Z

    move-result p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public getCloud()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazon/device/sync/Conflict;->mCloud:Ljava/lang/Object;

    return-object v0
.end method

.method public getLocal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/amazon/device/sync/Conflict;->mLocal:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/amazon/device/sync/Conflict;->mLocal:Ljava/lang/Object;

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

    .line 93
    iget-boolean v2, p0, Lcom/amazon/device/sync/Conflict;->mLocalDeleted:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 94
    iget-object v2, p0, Lcom/amazon/device/sync/Conflict;->mCloud:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 95
    iget-boolean v1, p0, Lcom/amazon/device/sync/Conflict;->mCloudDeleted:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isCloudDeleted()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/amazon/device/sync/Conflict;->mCloudDeleted:Z

    return v0
.end method

.method public isLocalDeleted()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/amazon/device/sync/Conflict;->mLocalDeleted:Z

    return v0
.end method
