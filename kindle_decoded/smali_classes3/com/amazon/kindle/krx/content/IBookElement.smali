.class public interface abstract Lcom/amazon/kindle/krx/content/IBookElement;
.super Ljava/lang/Object;
.source "IBookElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;
    }
.end annotation


# virtual methods
.method public abstract getBookElementType()Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;
.end method

.method public abstract getCoveringRectangles()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/krx/reader/Rectangle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract toDisplayableString()Ljava/lang/String;
.end method
