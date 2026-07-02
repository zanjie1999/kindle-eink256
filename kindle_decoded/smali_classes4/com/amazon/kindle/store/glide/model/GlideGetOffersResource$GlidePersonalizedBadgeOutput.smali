.class public final Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedBadgeOutput;
.super Ljava/lang/Object;
.source "GlideGetOffersResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlidePersonalizedBadgeOutput"
.end annotation


# instance fields
.field private final personalizedBadges:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "personalizedBadges"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getPersonalizedBadges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedBadgeOutput;->personalizedBadges:Ljava/util/List;

    return-object v0
.end method
