.class public interface abstract Lcom/amazon/krf/platform/ContentDecorationDataProvider;
.super Ljava/lang/Object;
.source "ContentDecorationDataProvider.java"


# virtual methods
.method public abstract getContentDecorations(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PositionRange;",
            "Lcom/amazon/krf/platform/ContentDecorationStyle;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setContentDecorationListener(Lcom/amazon/krf/platform/ContentDecorationListener;)V
.end method
