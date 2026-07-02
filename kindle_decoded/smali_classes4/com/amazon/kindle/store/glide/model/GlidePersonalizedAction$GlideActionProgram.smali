.class public final Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;
.super Ljava/lang/Object;
.source "GlidePersonalizedAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlideActionProgram"
.end annotation


# instance fields
.field private final channelCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channelCode"
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private final programCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "programCode"
    .end annotation
.end field


# virtual methods
.method public getProgramCode()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;->programCode:Ljava/lang/String;

    return-object v0
.end method
