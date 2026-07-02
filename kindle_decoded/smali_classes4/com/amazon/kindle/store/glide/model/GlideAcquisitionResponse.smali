.class public final Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;
.super Ljava/lang/Object;
.source "GlideAcquisitionResponse.java"


# instance fields
.field private final errorResult:Lcom/amazon/kindle/store/glide/model/GlideErrorResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorResult"
    .end annotation
.end field

.field private final httpStatusCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "httpStatusCode"
    .end annotation
.end field

.field private final resources:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resources"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource;",
            ">;"
        }
    .end annotation
.end field

.field private final status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# virtual methods
.method public getErrorResult()Lcom/amazon/kindle/store/glide/model/GlideErrorResult;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;->errorResult:Lcom/amazon/kindle/store/glide/model/GlideErrorResult;

    return-object v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;->resources:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;->status:Ljava/lang/String;

    return-object v0
.end method
