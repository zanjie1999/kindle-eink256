.class public Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;
.super Ljava/lang/Object;
.source "ReaderRestrictionHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;


# instance fields
.field private final restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    return-void
.end method


# virtual methods
.method public isAppDisabled(Ljava/lang/String;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isAppDisabled(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isBookPurchaseBlocked()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBookPurchaseProtected()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseProtected()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBooksBlocked()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBooksBlocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDocsBlocked()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isDocsBlocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNewsstandBlocked()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandBlocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNewsstandPurchaseBlocked()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandPurchaseBlocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSocialNetworkBlocked()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isSocialNetworkBlocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showBlockedDialog(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->showBlockedDialog(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;)V

    :cond_0
    return-void
.end method
