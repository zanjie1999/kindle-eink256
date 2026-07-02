.class public final Lcom/audible/hushpuppy/common/upsell/PriceData;
.super Ljava/lang/Object;
.source "PriceData.java"


# instance fields
.field private final currencyCode:Ljava/lang/String;

.field private final value:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/audible/hushpuppy/common/upsell/PriceData;->value:Ljava/math/BigDecimal;

    .line 27
    iput-object p2, p0, Lcom/audible/hushpuppy/common/upsell/PriceData;->currencyCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/audible/hushpuppy/common/upsell/PriceData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 52
    :cond_1
    check-cast p1, Lcom/audible/hushpuppy/common/upsell/PriceData;

    .line 54
    iget-object v1, p0, Lcom/audible/hushpuppy/common/upsell/PriceData;->currencyCode:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/audible/hushpuppy/common/upsell/PriceData;->currencyCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/audible/hushpuppy/common/upsell/PriceData;->currencyCode:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 57
    :cond_3
    iget-object v1, p0, Lcom/audible/hushpuppy/common/upsell/PriceData;->value:Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/audible/hushpuppy/common/upsell/PriceData;->value:Ljava/math/BigDecimal;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    :goto_1
    return v2

    :cond_5
    return v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/audible/hushpuppy/common/upsell/PriceData;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/math/BigDecimal;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/audible/hushpuppy/common/upsell/PriceData;->value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/audible/hushpuppy/common/upsell/PriceData;->value:Ljava/math/BigDecimal;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v2, p0, Lcom/audible/hushpuppy/common/upsell/PriceData;->currencyCode:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PriceData{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/upsell/PriceData;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/upsell/PriceData;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
