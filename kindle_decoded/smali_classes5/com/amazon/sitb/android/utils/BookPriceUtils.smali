.class public Lcom/amazon/sitb/android/utils/BookPriceUtils;
.super Ljava/lang/Object;
.source "BookPriceUtils.java"


# static fields
.field private static final BOOK_PRICE_MAX_AGE:J = 0x36ee80L

.field private static final BORROW_ACTION:Ljava/lang/String; = "borrow"

.field private static final BUY_ACTION:Ljava/lang/String; = "buy"

.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/utils/BookPriceUtils;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/utils/BookPriceUtils;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Instantiating utility class..."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static convertBookPriceToGlideOffer(Lcom/amazon/sitb/android/BookPrice;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;
    .locals 4

    if-eqz p0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/amazon/sitb/android/utils/BookPriceUtils;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Converting bookPrice:%s to glide offer"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;-><init>()V

    .line 54
    invoke-static {p0}, Lcom/amazon/sitb/android/utils/BookPriceUtils;->getOfferActionProgram(Lcom/amazon/sitb/android/BookPrice;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setActionProgram(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v0

    .line 55
    invoke-static {p0}, Lcom/amazon/sitb/android/utils/BookPriceUtils;->getOfferActionType(Lcom/amazon/sitb/android/BookPrice;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setActionType(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->isConditional()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setConditional(Z)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->getCsrfToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setCsrfToken(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setCurrency(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->getPriceAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setPrice(Ljava/math/BigDecimal;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setDisplayablePrice(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->getOfferId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setOfferId(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->build()Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertGlideOfferToBookPrice(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Lcom/amazon/sitb/android/BookPrice;
    .locals 7

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    .line 24
    invoke-static {v2, v3, v0, v1}, Lcom/amazon/sitb/android/BookPrice;->createEmpty(JJ)Lcom/amazon/sitb/android/BookPrice;

    move-result-object v2

    if-nez p0, :cond_0

    return-object v2

    .line 29
    :cond_0
    sget-object v3, Lcom/amazon/sitb/android/utils/BookPriceUtils;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "Converting glide offer:%s to bookPrice at time:%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lcom/amazon/sitb/android/utils/BookPriceUtils;->setOfferActionType(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/sitb/android/BookPrice;->setActionType(Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Lcom/amazon/sitb/android/utils/BookPriceUtils;->setOfferActionProgram(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/sitb/android/BookPrice;->setActionProgram(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getDisplayablePrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/sitb/android/BookPrice;->setFormattedPrice(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getCurrency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/sitb/android/BookPrice;->setCurrencyCode(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getPrice()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/sitb/android/BookPrice;->setPrice(Ljava/math/BigDecimal;)V

    .line 36
    invoke-static {p0}, Lcom/amazon/sitb/android/utils/BookPriceUtils;->setBookPriceBuyable(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/amazon/sitb/android/BookPrice;->setBuyable(Z)V

    .line 37
    invoke-static {p0}, Lcom/amazon/sitb/android/utils/BookPriceUtils;->setBookPriceBorrowable(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/amazon/sitb/android/BookPrice;->setBorrowable(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/sitb/android/BookPrice;->setAsin(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getCsrfToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/sitb/android/BookPrice;->setCsrfToken(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->isConditional()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/amazon/sitb/android/BookPrice;->setConditional(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getOfferId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/amazon/sitb/android/BookPrice;->setOfferId(Ljava/lang/String;)V

    return-object v2
.end method

.method private static getOfferActionProgram(Lcom/amazon/sitb/android/BookPrice;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;
    .locals 1

    .line 75
    const-class v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->getActionProgram()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/base/Enums;->getIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object p0

    sget-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->UNKNOWN:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object p0
.end method

.method private static getOfferActionType(Lcom/amazon/sitb/android/BookPrice;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;
    .locals 1

    .line 80
    const-class v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->getActionType()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/base/Enums;->getIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object p0

    sget-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->UNKNOWN:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    return-object p0
.end method

.method private static setBookPriceBorrowable(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string v0, "borrow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static setBookPriceBuyable(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string v0, "buy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static setOfferActionProgram(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->UNKNOWN:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setOfferActionType(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->UNKNOWN:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
