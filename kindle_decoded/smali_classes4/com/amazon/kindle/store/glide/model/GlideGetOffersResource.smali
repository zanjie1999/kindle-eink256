.class public final Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource;
.super Ljava/lang/Object;
.source "GlideGetOffersResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedActionOutput;,
        Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedBadgeOutput;
    }
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asin"
    .end annotation
.end field

.field private final personalizedActionOutput:Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedActionOutput;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "personalizedActionOutput"
    .end annotation
.end field

.field private final personalizedBadgeOutput:Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedBadgeOutput;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "personalizedBadgeOutput"
    .end annotation
.end field


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonalizedActionOutput()Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedActionOutput;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource;->personalizedActionOutput:Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedActionOutput;

    return-object v0
.end method

.method public getPersonalizedBadgeOutput()Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedBadgeOutput;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource;->personalizedBadgeOutput:Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedBadgeOutput;

    return-object v0
.end method
