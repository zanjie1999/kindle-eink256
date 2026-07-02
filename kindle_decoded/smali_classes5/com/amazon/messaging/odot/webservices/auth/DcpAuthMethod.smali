.class public Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;
.super Ljava/lang/Object;
.source "DcpAuthMethod.java"


# instance fields
.field private accountId:Ljava/lang/String;

.field private dcpAuthType:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 19
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;->accountId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;->dcpAuthType:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dcpAuthType cannot be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 36
    const-class v2, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 40
    :cond_1
    check-cast p1, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;

    .line 42
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;->accountId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;->accountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;->accountId:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 46
    :cond_3
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;->dcpAuthType:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    iget-object p1, p1, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;->dcpAuthType:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

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

    .line 24
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getDcpAuthType()Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;->dcpAuthType:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;->accountId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;->dcpAuthType:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
