.class public final Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;
.super Ljava/lang/Object;
.source "GlidePersonalizedAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlideOffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;
    }
.end annotation


# instance fields
.field private final conditional:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conditional"
    .end annotation
.end field

.field private final price:Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field


# virtual methods
.method public getPrice()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;->price:Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;

    return-object v0
.end method

.method public isConditional()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;->conditional:Z

    return v0
.end method
