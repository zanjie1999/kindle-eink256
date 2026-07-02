.class public Lcom/amazon/kindle/store/models/PriceInfo;
.super Ljava/lang/Object;
.source "PriceInfo.java"

# interfaces
.implements Lcom/amazon/kindle/krx/store/IPriceInfo;


# static fields
.field private static final EXPIRING_SOON_THRESHOLD_MS:J = 0x493e0L


# instance fields
.field private asin:Ljava/lang/String;

.field private borrowable:Z

.field private buyable:Z

.field private cancelOverride:Ljava/util/Date;

.field private currency:Ljava/lang/String;

.field private formattedPrice:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private orderItemId:Ljava/lang/String;

.field private orderTTL:Ljava/util/Date;

.field private owned:Z

.field private price:Ljava/lang/String;

.field private priceAmount:Ljava/math/BigDecimal;

.field private priceTTL:Ljava/util/Date;

.field private sessionId:Ljava/lang/String;

.field private sessionTime:Ljava/lang/String;

.field private state:Lcom/amazon/kindle/krx/store/PurchaseState;

.field private token:Ljava/lang/String;

.field private xUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/kindle/store/models/PriceInfo;->checkLibraryState(Ljava/lang/String;)Lcom/amazon/kindle/krx/store/PurchaseState;

    move-result-object v0

    .line 51
    invoke-direct {p0, p1}, Lcom/amazon/kindle/store/models/PriceInfo;->checkLibraryOwnership(Ljava/lang/String;)Z

    move-result v1

    .line 53
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/store/models/PriceInfo;->setAsin(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->cancelOverride:Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/store/models/PriceInfo;->setCancelOverride(Ljava/util/Date;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setState(Lcom/amazon/kindle/krx/store/PurchaseState;)V

    xor-int/lit8 p1, v1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/store/models/PriceInfo;->setBuyable(Z)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/store/models/PriceInfo;->setOwned(Z)V

    return-void
.end method

.method private checkLibraryOwnership(Ljava/lang/String;)Z
    .locals 3

    .line 487
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 488
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isOwned()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private checkLibraryState(Ljava/lang/String;)Lcom/amazon/kindle/krx/store/PurchaseState;
    .locals 3

    .line 501
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 502
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 505
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 506
    sget-object p1, Lcom/amazon/kindle/krx/store/PurchaseState;->LOCAL:Lcom/amazon/kindle/krx/store/PurchaseState;

    return-object p1

    .line 508
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/store/PurchaseState;->REMOTE:Lcom/amazon/kindle/krx/store/PurchaseState;

    return-object p1

    .line 511
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/store/PurchaseState;->REMOTE:Lcom/amazon/kindle/krx/store/PurchaseState;

    return-object p1
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelOverride()Ljava/util/Date;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->cancelOverride:Ljava/util/Date;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->formattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderTTL()Ljava/util/Date;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->orderTTL:Ljava/util/Date;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->priceAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPriceTTL()Ljava/util/Date;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->priceTTL:Ljava/util/Date;

    return-object v0
.end method

.method public getState()Lcom/amazon/kindle/krx/store/PurchaseState;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->state:Lcom/amazon/kindle/krx/store/PurchaseState;

    return-object v0
.end method

.method public isBorrowable()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->borrowable:Z

    return v0
.end method

.method public isBuyable()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->buyable:Z

    return v0
.end method

.method public isExpired()Z
    .locals 5

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/kindle/store/models/PriceInfo;->priceTTL:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExpiringSoon()Z
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->priceTTL:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOwned()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->owned:Z

    return v0
.end method

.method public isUnbuyable()Z
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->orderId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->orderItemId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->cancelOverride:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 249
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 250
    iget-object v1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->cancelOverride:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->asin:Ljava/lang/String;

    return-void
.end method

.method public setBorrowable(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->borrowable:Z

    return-void
.end method

.method public setBuyable(Z)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/amazon/kindle/store/models/PriceInfo;->asin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->checkLibraryOwnership(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 264
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->buyable:Z

    return-void
.end method

.method public setCancelOverride(Ljava/util/Date;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->cancelOverride:Ljava/util/Date;

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->currency:Ljava/lang/String;

    return-void
.end method

.method public setFormattedPrice(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->formattedPrice:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setOrderItemId(Ljava/lang/String;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->orderItemId:Ljava/lang/String;

    return-void
.end method

.method public setOrderTTL(Ljava/util/Date;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->orderTTL:Ljava/util/Date;

    return-void
.end method

.method public setOwned(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->owned:Z

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->price:Ljava/lang/String;

    return-void
.end method

.method public setPriceAmount(Ljava/math/BigDecimal;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->priceAmount:Ljava/math/BigDecimal;

    return-void
.end method

.method public setPriceTTL(Ljava/util/Date;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->priceTTL:Ljava/util/Date;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setState(Lcom/amazon/kindle/krx/store/PurchaseState;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->state:Lcom/amazon/kindle/krx/store/PurchaseState;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->token:Ljava/lang/String;

    return-void
.end method

.method public setxUid(Ljava/lang/String;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/amazon/kindle/store/models/PriceInfo;->xUid:Ljava/lang/String;

    return-void
.end method
