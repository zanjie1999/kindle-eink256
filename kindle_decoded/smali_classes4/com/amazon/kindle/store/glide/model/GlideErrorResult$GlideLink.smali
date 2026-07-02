.class public final Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;
.super Ljava/lang/Object;
.source "GlideErrorResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/store/glide/model/GlideErrorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlideLink"
.end annotation


# instance fields
.field private final method:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "method"
    .end annotation
.end field

.field private final rel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rel"
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;->url:Ljava/lang/String;

    return-object v0
.end method
