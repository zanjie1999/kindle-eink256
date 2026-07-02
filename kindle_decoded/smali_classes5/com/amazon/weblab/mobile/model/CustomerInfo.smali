.class public Lcom/amazon/weblab/mobile/model/CustomerInfo;
.super Ljava/lang/Object;
.source "CustomerInfo.java"


# instance fields
.field private volatile mDirectedId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/amazon/weblab/mobile/model/CustomerInfo;->setDirectedId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 37
    instance-of v0, p1, Lcom/amazon/weblab/mobile/model/CustomerInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 40
    :cond_0
    check-cast p1, Lcom/amazon/weblab/mobile/model/CustomerInfo;

    .line 41
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/CustomerInfo;->mDirectedId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 42
    iget-object p1, p1, Lcom/amazon/weblab/mobile/model/CustomerInfo;->mDirectedId:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/CustomerInfo;->mDirectedId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/weblab/mobile/model/CustomerInfo;->mDirectedId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDirectedId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/CustomerInfo;->mDirectedId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/CustomerInfo;->mDirectedId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/CustomerInfo;->mDirectedId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public setDirectedId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/amazon/weblab/mobile/model/CustomerInfo;->mDirectedId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/amazon/weblab/mobile/model/CustomerInfo;->mDirectedId:Ljava/lang/String;

    :goto_1
    return-void
.end method
