.class public final Lcom/amazon/kindle/store/glide/model/GlideErrorResult;
.super Ljava/lang/Object;
.source "GlideErrorResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;
    }
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

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideErrorResult;->links:Ljava/util/List;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideErrorResult;->localizedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideErrorResult;->responseCode:Ljava/lang/String;

    return-object v0
.end method
