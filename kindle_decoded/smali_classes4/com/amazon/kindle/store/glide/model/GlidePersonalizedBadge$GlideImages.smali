.class public final Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;
.super Ljava/lang/Object;
.source "GlidePersonalizedBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlideImages"
.end annotation


# instance fields
.field private final altText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "altText"
    .end annotation
.end field

.field private final badge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "badge"
    .end annotation
.end field

.field private final darkBadge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "darkBadge"
    .end annotation
.end field

.field private final darkMediaServicesPrefix:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "darkMediaServicesPrefix"
    .end annotation
.end field

.field private final darkSticker:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "darkSticker"
    .end annotation
.end field

.field private final isHeadphones:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isHeadphones"
    .end annotation
.end field

.field private final mediaServicesPrefix:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mediaServicesPrefix"
    .end annotation
.end field

.field private final sticker:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sticker"
    .end annotation
.end field

.field private final yAxis:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "yAxis"
    .end annotation
.end field


# virtual methods
.method public getAltText()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->altText:Ljava/lang/String;

    return-object v0
.end method

.method public getBadge()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->badge:Ljava/lang/String;

    return-object v0
.end method

.method public getDarkBadge()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->darkBadge:Ljava/lang/String;

    return-object v0
.end method

.method public getDarkMediaServicesPrefix()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->darkMediaServicesPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getDarkSticker()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->darkSticker:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaServicesPrefix()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->mediaServicesPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSticker()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->sticker:Ljava/lang/String;

    return-object v0
.end method

.method public getyAxis()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->yAxis:I

    return v0
.end method

.method public isHeadphones()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->isHeadphones:Z

    return v0
.end method
