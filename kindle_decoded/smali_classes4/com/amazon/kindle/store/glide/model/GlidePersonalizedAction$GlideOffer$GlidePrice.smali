.class public final Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;
.super Ljava/lang/Object;
.source "GlidePersonalizedAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlidePrice"
.end annotation


# instance fields
.field private final currency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation
.end field

.field private final displayablePrice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayablePrice"
    .end annotation
.end field

.field private final value:Ljava/math/BigDecimal;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayablePrice()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;->displayablePrice:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/math/BigDecimal;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;->value:Ljava/math/BigDecimal;

    return-object v0
.end method
