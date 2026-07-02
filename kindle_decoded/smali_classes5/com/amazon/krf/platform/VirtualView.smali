.class public interface abstract Lcom/amazon/krf/platform/VirtualView;
.super Ljava/lang/Object;
.source "VirtualView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/VirtualView$VirtualViewType;
    }
.end annotation


# virtual methods
.method public abstract contains(FF)Z
.end method

.method public abstract getBounds()Landroid/graphics/Rect;
.end method

.method public abstract getContentDescription()Ljava/lang/String;
.end method

.method public abstract getDetailDescription()Ljava/lang/String;
.end method

.method public abstract getExtras()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()I
.end method

.method public abstract getOrder()I
.end method

.method public abstract getShortDescription()Ljava/lang/String;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getViewType()Lcom/amazon/krf/platform/VirtualView$VirtualViewType;
.end method

.method public abstract getZOrder()I
.end method

.method public abstract isClickable()Z
.end method

.method public abstract isTextual()Z
.end method

.method public abstract setId(I)V
.end method

.method public abstract setOrder(I)V
.end method
