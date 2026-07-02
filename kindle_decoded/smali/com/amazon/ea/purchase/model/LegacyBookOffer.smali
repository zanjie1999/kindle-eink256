.class public Lcom/amazon/ea/purchase/model/LegacyBookOffer;
.super Ljava/lang/Object;
.source "LegacyBookOffer.java"

# interfaces
.implements Lcom/amazon/ea/purchase/model/BookOffer;


# static fields
.field private static final CACHE_STRING_FIELD_SEPARATOR:Ljava/lang/String; = "@@"

.field private static final EXPIRING_SOON_THRESHOLD_MS:J = 0x493e0L

.field private static final NUM_FIELDS:I = 0x8


# instance fields
.field private asin:Ljava/lang/String;

.field private final borrowable:Z

.field public final buyable:Z

.field private final currencyCode:Ljava/lang/String;

.field private final formattedPrice:Ljava/lang/String;

.field private final isKUBook:Z

.field private final maxAge:J

.field private final priceAmount:Ljava/math/BigDecimal;

.field private final timeCached:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->asin:Ljava/lang/String;

    const-string p1, "@@"

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 88
    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 p2, 0x0

    .line 92
    aget-object v0, p1, p2

    if-eqz v0, :cond_0

    aget-object v0, p1, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/math/BigDecimal;

    aget-object p2, p1, p2

    invoke-direct {v0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->priceAmount:Ljava/math/BigDecimal;

    const/4 p2, 0x1

    .line 93
    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->currencyCode:Ljava/lang/String;

    const/4 p2, 0x2

    .line 94
    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->formattedPrice:Ljava/lang/String;

    const/4 p2, 0x3

    .line 95
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->buyable:Z

    const/4 p2, 0x4

    .line 96
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->borrowable:Z

    const/4 p2, 0x5

    .line 97
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->isKUBook:Z

    const/4 p2, 0x6

    .line 98
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->maxAge:J

    const/4 p2, 0x7

    .line 99
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->timeCached:J

    return-void

    .line 89
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect number of fields in cache string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;ZZZJJ)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->asin:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->priceAmount:Ljava/math/BigDecimal;

    .line 76
    iput-object p3, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->currencyCode:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->formattedPrice:Ljava/lang/String;

    .line 78
    iput-boolean p5, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->buyable:Z

    .line 79
    iput-boolean p6, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->borrowable:Z

    .line 80
    iput-boolean p7, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->isKUBook:Z

    .line 81
    iput-wide p8, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->maxAge:J

    .line 82
    iput-wide p10, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->timeCached:J

    return-void
.end method


# virtual methods
.method public getAge()J
    .locals 4

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->timeCached:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getBookCoverUrl(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;Z)Ljava/lang/String;
    .locals 0

    const/4 p3, 0x0

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->getBookCoverUrl(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->formattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->priceAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public isAcquirable()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->buyable:Z

    return v0
.end method

.method public isBorrowable()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->borrowable:Z

    return v0
.end method

.method public isExpired()Z
    .locals 5

    .line 173
    invoke-virtual {p0}, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->getAge()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->maxAge:J

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

    .line 166
    invoke-virtual {p0}, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->getAge()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->maxAge:J

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
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->isKUBook:Z

    return v0
.end method

.method public isPrBook()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toCacheString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->priceAmount:Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->currencyCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->formattedPrice:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->buyable:Z

    .line 194
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->borrowable:Z

    .line 195
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->isKUBook:Z

    .line 196
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->maxAge:J

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->timeCached:J

    .line 198
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "@@"

    .line 201
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LegacyBookOffer [formattedPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->formattedPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buyable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->buyable:Z

    const-string v2, "Y"

    const-string v3, "N"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", borrowable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->borrowable:Z

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isKUBook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->isKUBook:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->maxAge:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesSidecarBorrowSetting()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
