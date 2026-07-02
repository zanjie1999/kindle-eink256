.class public final Lcom/amazon/kindle/store/glide/model/GlideReturnResource$GlideState;
.super Ljava/lang/Object;
.source "GlideReturnResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/store/glide/model/GlideReturnResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlideState"
.end annotation


# instance fields
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

.field private final responseCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "responseCode"
    .end annotation
.end field


# virtual methods
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

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideReturnResource$GlideState;->links:Ljava/util/List;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideReturnResource$GlideState;->localizedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideReturnResource$GlideState;->responseCode:Ljava/lang/String;

    return-object v0
.end method
