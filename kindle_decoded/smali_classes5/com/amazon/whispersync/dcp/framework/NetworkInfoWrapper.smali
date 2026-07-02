.class public Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;
.super Ljava/lang/Object;
.source "NetworkInfoWrapper.java"


# instance fields
.field private final mInner:Landroid/net/NetworkInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    return-void
.end method


# virtual methods
.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Landroid/net/NetworkInfo$State;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubtype()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    return v0
.end method

.method public getSubtypeName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnectedOrConnecting()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    return v0
.end method

.method public isFailover()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v0

    return v0
.end method

.method public isRoaming()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
