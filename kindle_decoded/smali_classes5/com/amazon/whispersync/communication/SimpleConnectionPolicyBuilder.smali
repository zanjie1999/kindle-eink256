.class public Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;
.super Ljava/lang/Object;
.source "SimpleConnectionPolicyBuilder.java"

# interfaces
.implements Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;


# instance fields
.field protected final mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->constructPolicy()Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    return-void
.end method


# virtual methods
.method public build()Lamazon/whispersync/communication/connection/ConnectionPolicy;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsInstanceLocked(Z)V

    .line 141
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    return-object v0
.end method

.method protected constructPolicy()Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;
    .locals 1

    .line 33
    new-instance v0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;-><init>()V

    return-object v0
.end method

.method public setCompressionOption(Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->isInstanceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setCompressionOption(Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;)V

    return-object p0

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1
.end method

.method public setIsAnonymousCredentialsAllowed(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->isInstanceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsAnonymousCredentialsAllowed(Z)V

    return-object p0

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1
.end method

.method public setIsClearText(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->isInstanceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsClearText(Z)V

    return-object p0

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1
.end method

.method public setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->isInstanceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsLowLatencyNecessary(Z)V

    return-object p0

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1
.end method

.method public setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->isInstanceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsRequestResponseOnly(Z)V

    return-object p0

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1
.end method

.method public setIsRoamingAllowed(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->isInstanceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsRoamingAllowed(Z)V

    return-object p0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1
.end method

.method public setIsShortLived(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->isInstanceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsShortLived(Z)V

    return-object p0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1
.end method

.method public setIsWiFiNecessary(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->isInstanceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsWiFiNecessary(Z)V

    return-object p0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1
.end method

.method public setPriority(Lamazon/whispersync/communication/Priority;)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lamazon/whispersync/communication/Priority;->convertToConnectionPriority()Lamazon/whispersync/communication/connection/Priority;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->setPriority(Lamazon/whispersync/communication/connection/Priority;)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPriority(Lamazon/whispersync/communication/connection/Priority;)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->isInstanceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;->mPolicy:Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setPriority(Lamazon/whispersync/communication/connection/Priority;)V

    return-object p0

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1
.end method
