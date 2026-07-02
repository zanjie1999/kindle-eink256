.class public final Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;
.super Ljava/lang/Object;
.source "GlidePersonalizedAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;,
        Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;
    }
.end annotation


# instance fields
.field private final actionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionId"
    .end annotation
.end field

.field private final actionProgram:Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionProgram"
    .end annotation
.end field

.field private final actionType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionType"
    .end annotation
.end field

.field private final csrfToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "csrfToken"
    .end annotation
.end field

.field private final glideOffer:Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offer"
    .end annotation
.end field


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionProgram()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;->actionProgram:Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;

    return-object v0
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getCsrfToken()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;->csrfToken:Ljava/lang/String;

    return-object v0
.end method

.method public getGlideOffer()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;->glideOffer:Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;

    return-object v0
.end method
