.class public Lcom/amazon/kindle/store/glide/model/GlideReturnResource;
.super Ljava/lang/Object;
.source "GlideReturnResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/store/glide/model/GlideReturnResource$GlideState;
    }
.end annotation


# instance fields
.field private final states:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "states"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/store/glide/model/GlideReturnResource$GlideState;",
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
            "Lcom/amazon/kindle/store/glide/model/GlideReturnResource$GlideState;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/model/GlideReturnResource;->states:Ljava/util/List;

    return-object v0
.end method
