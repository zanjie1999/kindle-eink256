.class public Lcom/amazon/kcp/application/MBPBookData;
.super Ljava/lang/Object;
.source "MBPBookData.java"

# interfaces
.implements Lcom/amazon/kindle/model/sync/annotation/IBookData;
.implements Ljava/lang/Cloneable;


# instance fields
.field asin:Ljava/lang/String;

.field cdeFormat:Ljava/lang/String;

.field cdeType:Ljava/lang/String;

.field guid:Ljava/lang/String;

.field version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/application/MBPBookData;->asin:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/amazon/kcp/application/MBPBookData;->guid:Ljava/lang/String;

    .line 27
    sget-object p1, Lcom/amazon/kindle/model/sync/annotation/IBookData$Type;->MOBI:Lcom/amazon/kindle/model/sync/annotation/IBookData$Type;

    .line 28
    iput-object p3, p0, Lcom/amazon/kcp/application/MBPBookData;->cdeFormat:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/amazon/kcp/application/MBPBookData;->cdeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/amazon/kindle/model/sync/annotation/IBookData;
    .locals 5

    .line 120
    new-instance v0, Lcom/amazon/kcp/application/MBPBookData;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/MBPBookData;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/application/MBPBookData;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/MBPBookData;->getCDEBookFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/application/MBPBookData;->getCdeType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/application/MBPBookData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/amazon/kcp/application/MBPBookData;->clone()Lcom/amazon/kindle/model/sync/annotation/IBookData;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 133
    :cond_0
    instance-of v1, p1, Lcom/amazon/kcp/application/MBPBookData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 136
    :cond_1
    check-cast p1, Lcom/amazon/kcp/application/MBPBookData;

    .line 137
    iget-object v1, p0, Lcom/amazon/kcp/application/MBPBookData;->asin:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kcp/application/MBPBookData;->asin:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/application/MBPBookData;->guid:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/application/MBPBookData;->guid:Ljava/lang/String;

    .line 138
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/application/MBPBookData;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getCDEBookFormat()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/application/MBPBookData;->cdeFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getCdeType()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/application/MBPBookData;->cdeType:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/application/MBPBookData;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/amazon/kcp/application/MBPBookData;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/amazon/kcp/application/MBPBookData;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/kcp/application/MBPBookData;->guid:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/kcp/application/MBPBookData;->asin:Ljava/lang/String;

    return-void
.end method

.method public setCDEFormat(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/application/MBPBookData;->cdeFormat:Ljava/lang/String;

    return-void
.end method

.method public setCdeType(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/kcp/application/MBPBookData;->cdeType:Ljava/lang/String;

    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/application/MBPBookData;->guid:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/amazon/kcp/application/MBPBookData;->version:I

    return-void
.end method
