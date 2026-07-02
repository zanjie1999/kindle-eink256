.class public Lcom/amazon/sitb/android/cache/price/BookPriceFormatter;
.super Ljava/lang/Object;
.source "BookPriceFormatter.java"

# interfaces
.implements Lcom/amazon/sitb/android/cache/CacheObjectFormatter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/sitb/android/cache/CacheObjectFormatter<",
        "Lcom/amazon/sitb/android/BookPrice;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Lcom/amazon/sitb/android/BookPrice;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getPriceAmount()Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getPriceAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v3, "@@"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 19
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 20
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getFormattedPrice()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getFormattedPrice()Ljava/lang/String;

    move-result-object v4

    :goto_2
    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 21
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getActionProgram()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v2

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getActionProgram()Ljava/lang/String;

    move-result-object v4

    :goto_3
    aput-object v4, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    .line 22
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getActionType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v4, v2

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getActionType()Ljava/lang/String;

    move-result-object v4

    :goto_4
    aput-object v4, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    .line 23
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getAsin()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v4, v2

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getAsin()Ljava/lang/String;

    move-result-object v4

    :goto_5
    aput-object v4, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    .line 24
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getOfferId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v4, v2

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getOfferId()Ljava/lang/String;

    move-result-object v4

    :goto_6
    aput-object v4, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    .line 25
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getCsrfToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getCsrfToken()Ljava/lang/String;

    move-result-object v2

    :goto_7
    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    .line 26
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->isConditional()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    .line 27
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->isBuyable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    .line 28
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->isBorrowable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    .line 29
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getMaxAgeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    .line 30
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getTimeCached()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%d%s%d"

    .line 17
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/sitb/android/BookPrice;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/cache/price/BookPriceFormatter;->format(Lcom/amazon/sitb/android/BookPrice;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
