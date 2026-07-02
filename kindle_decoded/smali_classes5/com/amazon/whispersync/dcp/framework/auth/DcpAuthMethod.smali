.class public Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;
.super Ljava/lang/Object;
.source "DcpAuthMethod.java"


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mDcpAuthType:Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->mAccountId:Ljava/lang/String;

    .line 17
    const-class p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Auth type cannot be null"

    invoke-static {p2, p1, v1, v0}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->mDcpAuthType:Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 38
    const-class v2, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 43
    :cond_1
    check-cast p1, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;

    .line 45
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->mAccountId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->mAccountId:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 49
    :cond_3
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->mDcpAuthType:Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    iget-object p1, p1, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->mDcpAuthType:Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    if-ne v2, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getDcpAuthType()Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->mDcpAuthType:Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->mAccountId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->mDcpAuthType:Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
