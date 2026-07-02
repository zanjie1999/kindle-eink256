.class public interface abstract Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;
.super Ljava/lang/Object;
.source "IGHLPositionFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/kindle/krx/reader/IPosition;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createFromIndexAndOffset(ILandroid/graphics/PointF;)Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/PointF;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract extractOffsetFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation
.end method
