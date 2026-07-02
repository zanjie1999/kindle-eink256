.class public final Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge;
.super Ljava/lang/Object;
.source "GlidePersonalizedBadge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;,
        Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideOffer;
    }
.end annotation


# instance fields
.field private final actionProgram:Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionProgram"
    .end annotation
.end field

.field private final glideImages:Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "images"
    .end annotation
.end field

.field private final glideOffer:Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideOffer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offer"
    .end annotation
.end field


# virtual methods
.method public getActionProgram()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge;->actionProgram:Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;

    return-object v0
.end method

.method public getGlideImages()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge;->glideImages:Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;

    return-object v0
.end method

.method public getGlideOffer()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideOffer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge;->glideOffer:Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideOffer;

    return-object v0
.end method
