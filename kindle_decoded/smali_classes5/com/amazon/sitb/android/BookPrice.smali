.class public Lcom/amazon/sitb/android/BookPrice;
.super Ljava/lang/Object;
.source "BookPrice.java"

# interfaces
.implements Lcom/amazon/sitb/android/HasExpiration;


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private actionProgram:Ljava/lang/String;

.field private actionType:Ljava/lang/String;

.field private asin:Ljava/lang/String;

.field private borrowable:Z

.field private buyable:Z

.field private conditional:Z

.field private csrfToken:Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field private formattedPrice:Ljava/lang/String;

.field private maxAge:J

.field private offerId:Ljava/lang/String;

.field private price:Ljava/math/BigDecimal;

.field private timeCached:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/BookPrice;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/BookPrice;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJJ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/sitb/android/BookPrice;->price:Ljava/math/BigDecimal;

    .line 33
    iput-object p2, p0, Lcom/amazon/sitb/android/BookPrice;->currencyCode:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/amazon/sitb/android/BookPrice;->formattedPrice:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/amazon/sitb/android/BookPrice;->actionProgram:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/amazon/sitb/android/BookPrice;->actionType:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/amazon/sitb/android/BookPrice;->asin:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/amazon/sitb/android/BookPrice;->offerId:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lcom/amazon/sitb/android/BookPrice;->csrfToken:Ljava/lang/String;

    .line 40
    iput-boolean p9, p0, Lcom/amazon/sitb/android/BookPrice;->conditional:Z

    .line 41
    iput-boolean p10, p0, Lcom/amazon/sitb/android/BookPrice;->buyable:Z

    .line 42
    iput-boolean p11, p0, Lcom/amazon/sitb/android/BookPrice;->borrowable:Z

    .line 43
    iput-wide p12, p0, Lcom/amazon/sitb/android/BookPrice;->maxAge:J

    .line 44
    iput-wide p14, p0, Lcom/amazon/sitb/android/BookPrice;->timeCached:J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 16

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-wide/from16 v12, p6

    .line 48
    invoke-direct/range {v0 .. v15}, Lcom/amazon/sitb/android/BookPrice;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJJ)V

    return-void
.end method

.method public static createEmpty(JJ)Lcom/amazon/sitb/android/BookPrice;
    .locals 17

    .line 58
    new-instance v16, Lcom/amazon/sitb/android/BookPrice;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v12, p0

    move-wide/from16 v14, p2

    invoke-direct/range {v0 .. v15}, Lcom/amazon/sitb/android/BookPrice;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJJ)V

    return-object v16
.end method


# virtual methods
.method public getActionProgram()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/sitb/android/BookPrice;->actionProgram:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/sitb/android/BookPrice;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getAgeInMillis()J
    .locals 4

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/sitb/android/BookPrice;->timeCached:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/sitb/android/BookPrice;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getCsrfToken()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/sitb/android/BookPrice;->csrfToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/sitb/android/BookPrice;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/amazon/sitb/android/BookPrice;->formattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAgeInMillis()J
    .locals 2

    .line 206
    iget-wide v0, p0, Lcom/amazon/sitb/android/BookPrice;->maxAge:J

    return-wide v0
.end method

.method public getOfferId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/sitb/android/BookPrice;->offerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/sitb/android/BookPrice;->price:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPriceAmountString()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amazon/sitb/android/BookPrice;->price:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeCached()J
    .locals 2

    .line 213
    iget-wide v0, p0, Lcom/amazon/sitb/android/BookPrice;->timeCached:J

    return-wide v0
.end method

.method public getTimeToExpiring()J
    .locals 2

    .line 191
    invoke-static {p0}, Lcom/amazon/sitb/android/PriceAge;->getTimeToExpiringInMillis(Lcom/amazon/sitb/android/BookPrice;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isBorrowable()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/amazon/sitb/android/BookPrice;->borrowable:Z

    return v0
.end method

.method public isBuyable()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/amazon/sitb/android/BookPrice;->buyable:Z

    return v0
.end method

.method public isConditional()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/amazon/sitb/android/BookPrice;->conditional:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/sitb/android/BookPrice;->price:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFree()Z
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/amazon/sitb/android/BookPrice;->price:Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUsable()Z
    .locals 1

    .line 149
    invoke-static {p0}, Lcom/amazon/sitb/android/PriceAge;->getAge(Lcom/amazon/sitb/android/BookPrice;)Lcom/amazon/sitb/android/PriceAge;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/amazon/sitb/android/PriceAge;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->isBuyable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionProgram(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/sitb/android/BookPrice;->actionProgram:Ljava/lang/String;

    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/sitb/android/BookPrice;->actionType:Ljava/lang/String;

    return-void
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/sitb/android/BookPrice;->asin:Ljava/lang/String;

    return-void
.end method

.method public setBorrowable(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/amazon/sitb/android/BookPrice;->borrowable:Z

    return-void
.end method

.method public setBuyable(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/amazon/sitb/android/BookPrice;->buyable:Z

    return-void
.end method

.method public setConditional(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/amazon/sitb/android/BookPrice;->conditional:Z

    return-void
.end method

.method public setCsrfToken(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/sitb/android/BookPrice;->csrfToken:Ljava/lang/String;

    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/amazon/sitb/android/BookPrice;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public setFormattedPrice(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/sitb/android/BookPrice;->formattedPrice:Ljava/lang/String;

    return-void
.end method

.method public setOfferId(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/sitb/android/BookPrice;->offerId:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/math/BigDecimal;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/amazon/sitb/android/BookPrice;->price:Ljava/math/BigDecimal;

    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .line 186
    invoke-static {p0}, Lcom/amazon/sitb/android/PriceAge;->getAge(Lcom/amazon/sitb/android/BookPrice;)Lcom/amazon/sitb/android/PriceAge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/PriceAge;->shouldUpdate()Z

    move-result v0

    return v0
.end method

.method public toLocalizedString()Ljava/lang/String;
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/amazon/sitb/android/BookPrice;->formattedPrice:Ljava/lang/String;

    return-object v0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called toLocalizedString() on empty BookPrice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 249
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/amazon/sitb/android/BookPrice;->timeCached:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BookPrice{price="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/sitb/android/BookPrice;->price:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currencyCode=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/sitb/android/BookPrice;->currencyCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", formattedPrice=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/sitb/android/BookPrice;->formattedPrice:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", actionProgram=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/sitb/android/BookPrice;->actionProgram:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", actionType=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/sitb/android/BookPrice;->actionType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", asin=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/sitb/android/BookPrice;->asin:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", offerId=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/sitb/android/BookPrice;->offerId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", csrfToken=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/sitb/android/BookPrice;->csrfToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", conditional="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/sitb/android/BookPrice;->conditional:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", buyable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/sitb/android/BookPrice;->buyable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", borrowable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/sitb/android/BookPrice;->borrowable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", timeCached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", maxAge="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazon/sitb/android/BookPrice;->maxAge:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
