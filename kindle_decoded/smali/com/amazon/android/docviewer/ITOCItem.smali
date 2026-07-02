.class public interface abstract Lcom/amazon/android/docviewer/ITOCItem;
.super Ljava/lang/Object;
.source "ITOCItem.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IGoto;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;
    }
.end annotation


# virtual methods
.method public abstract computePageNumberToPositionMap(Lcom/amazon/foundation/internal/IObjectCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getPosition()I
.end method

.method public abstract getThumbnail()Landroid/graphics/Bitmap;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method
