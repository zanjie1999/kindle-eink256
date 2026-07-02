.class public final Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource;
.super Ljava/lang/Object;
.source "GlideAcquisitionResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;
    }
.end annotation


# instance fields
.field private final acquisitionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "acquisitionId"
    .end annotation
.end field

.field private final states:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "states"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource;->states:Ljava/util/List;

    return-object v0
.end method
