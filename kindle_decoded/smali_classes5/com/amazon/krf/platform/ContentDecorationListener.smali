.class public interface abstract Lcom/amazon/krf/platform/ContentDecorationListener;
.super Ljava/lang/Object;
.source "ContentDecorationListener.java"


# virtual methods
.method public abstract onContentDecorationChanged(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDecorationsInvalidated()V
.end method
