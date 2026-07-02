.class public interface abstract Lcom/amazon/krf/platform/WordIterator;
.super Ljava/lang/Object;
.source "WordIterator.java"

# interfaces
.implements Lcom/amazon/krf/platform/Disposable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/krf/platform/Disposable;",
        "Ljava/util/Iterator<",
        "Lcom/amazon/krf/platform/WordRange;",
        ">;"
    }
.end annotation


# static fields
.field public static final ITR_ACCESSIBILITY:I = 0x2

.field public static final ITR_DEFAULT:I = 0x0

.field public static final ITR_PUNCTUATION:I = 0x1


# virtual methods
.method public abstract first()V
.end method

.method public abstract getCurrentPosition()Lcom/amazon/krf/platform/Position;
.end method

.method public abstract getMode()I
.end method

.method public abstract goToPosition(Lcom/amazon/krf/platform/Position;)Z
.end method

.method public abstract hasNext()Z
.end method

.method public abstract hasPrevious()Z
.end method

.method public abstract last()V
.end method

.method public abstract next()Lcom/amazon/krf/platform/WordRange;
.end method

.method public abstract next(IC)Lcom/amazon/krf/platform/WordRange;
.end method

.method public abstract previous()Lcom/amazon/krf/platform/WordRange;
.end method

.method public abstract previous(IC)Lcom/amazon/krf/platform/WordRange;
.end method

.method public abstract resetToBegin()Z
.end method

.method public abstract resetToEnd()Z
.end method

.method public abstract textInRange(Lcom/amazon/krf/platform/PositionRange;C)Lcom/amazon/krf/platform/WordRange;
.end method
