.class public final Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedActionOutput;
.super Ljava/lang/Object;
.source "GlideGetOffersResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlidePersonalizedActionOutput"
.end annotation


# instance fields
.field private final availability:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "availability"
    .end annotation
.end field

.field private final personalizedActions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "personalizedActions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getAvailability()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedActionOutput;->availability:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonalizedActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedActionOutput;->personalizedActions:Ljava/util/List;

    return-object v0
.end method
