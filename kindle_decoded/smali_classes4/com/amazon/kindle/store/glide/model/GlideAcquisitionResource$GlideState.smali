.class public final Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;
.super Ljava/lang/Object;
.source "GlideAcquisitionResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlideState"
.end annotation


# instance fields
.field private final executionResult:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "executionResult"
    .end annotation
.end field

.field private final links:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "links"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;",
            ">;"
        }
    .end annotation
.end field

.field private final localizedMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localizedMessage"
    .end annotation
.end field

.field private final orderId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderId"
    .end annotation
.end field

.field private final orderItemId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderItemId"
    .end annotation
.end field

.field private final responseCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "responseCode"
    .end annotation
.end field


# virtual methods
.method public getExecutionResult()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;->executionResult:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;->links:Ljava/util/List;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;->localizedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderItemId()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;->orderItemId:J

    return-wide v0
.end method

.method public getResponseCode()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;->responseCode:Ljava/lang/String;

    return-object v0
.end method
