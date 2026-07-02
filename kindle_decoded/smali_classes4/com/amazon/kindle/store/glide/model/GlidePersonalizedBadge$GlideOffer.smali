.class public final Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideOffer;
.super Ljava/lang/Object;
.source "GlidePersonalizedBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlideOffer"
.end annotation


# instance fields
.field private final conditional:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conditional"
    .end annotation
.end field


# virtual methods
.method public isConditional()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideOffer;->conditional:Z

    return v0
.end method
