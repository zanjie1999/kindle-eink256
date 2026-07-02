.class public Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;
.super Ljava/lang/Object;
.source "GlideV2BookOffer.java"

# interfaces
.implements Lcom/amazon/ea/purchase/model/BookOffer;


# static fields
.field private static final EXPIRING_SOON_THRESHOLD_MS:J = 0x493e0L


# instance fields
.field private badgeInfo:Lcom/amazon/ea/purchase/model/BadgeInfo;

.field private final krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

.field private final maxAge:J

.field private final timeCached:J


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Lcom/amazon/ea/purchase/model/BadgeInfo;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->timeCached:J

    const-wide/32 v0, 0x5265c00

    .line 42
    iput-wide v0, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->maxAge:J

    .line 43
    iput-object p2, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->badgeInfo:Lcom/amazon/ea/purchase/model/BadgeInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance p1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;-><init>()V

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setCsrfToken(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object p1

    const/4 v1, 0x2

    .line 59
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setOfferId(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object p1

    const/4 v1, 0x3

    .line 60
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setActionProgram(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object p1

    const/4 v1, 0x4

    .line 61
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setActionType(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object p1

    const/4 v1, 0x5

    .line 62
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setConditional(Z)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object p1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/4 v2, 0x6

    .line 63
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setPrice(Ljava/math/BigDecimal;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object p1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/4 v2, 0x7

    .line 64
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setCurrency(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object p1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/16 v2, 0x8

    .line 65
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {p1, v3}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setDisplayablePrice(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->build()Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    const/16 p1, 0x9

    .line 67
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->timeCached:J

    const/16 p1, 0xa

    .line 68
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->maxAge:J

    .line 69
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/16 v3, 0xd

    .line 70
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 71
    new-instance p1, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;

    invoke-direct {p1}, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;-><init>()V

    .line 72
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->setSticker(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;

    .line 73
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->setDarkSticker(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;

    .line 74
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->setyAxis(I)Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;

    .line 75
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->build()Lcom/amazon/ea/purchase/model/BadgeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->badgeInfo:Lcom/amazon/ea/purchase/model/BadgeInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 78
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getAge()J
    .locals 4

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->timeCached:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookCoverUrl(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;Z)Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->badgeInfo:Lcom/amazon/ea/purchase/model/BadgeInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v0, p3}, Lcom/amazon/ea/util/StyleCodeUtil;->addBadgeParamFromGlide(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/ea/purchase/model/BadgeInfo;Z)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getDisplayablePrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKrxOffer()Lcom/amazon/kindle/krx/glide/KRXAsinOffer;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    return-object v0
.end method

.method public getPriceAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getPrice()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public isAcquirable()Z
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->isBorrowable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->isBuyable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isBorrowable()Z
    .locals 2

    .line 162
    sget-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BORROW:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    iget-object v1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBuyable()Z
    .locals 2

    .line 166
    sget-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BUY:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    iget-object v1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isExpired()Z
    .locals 5

    .line 186
    invoke-virtual {p0}, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->getAge()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->maxAge:J

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
    .locals 6

    .line 181
    invoke-virtual {p0}, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->getAge()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->maxAge:J

    const-wide/32 v4, 0x493e0

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKuBook()Z
    .locals 2

    .line 152
    sget-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->KINDLE_UNLIMITED:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    iget-object v1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrBook()Z
    .locals 2

    .line 157
    sget-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->PRIME_READING:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    iget-object v1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toCacheString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 87
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 88
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getAsin()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 89
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getCsrfToken()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 90
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getOfferId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 91
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 92
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 93
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->isConditional()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 94
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getPrice()Ljava/math/BigDecimal;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getPrice()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v9, v2

    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 95
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getCurrency()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getCurrency()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v10, v2

    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 96
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getDisplayablePrice()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->krxOffer:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getDisplayablePrice()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v11, v2

    iget-wide v12, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->timeCached:J

    .line 97
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->maxAge:J

    .line 98
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->badgeInfo:Lcom/amazon/ea/purchase/model/BadgeInfo;

    if-nez v2, :cond_3

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_3

    .line 99
    :cond_3
    invoke-virtual {v2}, Lcom/amazon/ea/purchase/model/BadgeInfo;->getSticker()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v14, v2

    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->badgeInfo:Lcom/amazon/ea/purchase/model/BadgeInfo;

    if-nez v2, :cond_4

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_4

    .line 100
    :cond_4
    invoke-virtual {v2}, Lcom/amazon/ea/purchase/model/BadgeInfo;->getDarkStiker()Ljava/lang/String;

    move-result-object v2

    :goto_4
    const/16 v16, 0x0

    aput-object v2, v15, v16

    iget-object v2, v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->badgeInfo:Lcom/amazon/ea/purchase/model/BadgeInfo;

    if-nez v2, :cond_5

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_5

    .line 101
    :cond_5
    invoke-virtual {v2}, Lcom/amazon/ea/purchase/model/BadgeInfo;->getyAxis()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    const/16 v16, 0x1

    aput-object v2, v15, v16

    .line 87
    invoke-static/range {v3 .. v15}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 104
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlideV2BookOffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->toCacheString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesSidecarBorrowSetting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
