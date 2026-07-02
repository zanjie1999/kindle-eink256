.class final Lcom/amazon/kindle/nln/IThumbnailPage$1;
.super Ljava/lang/Object;
.source "IThumbnailPage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/IThumbnailPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/nln/IThumbnailPage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/nln/IThumbnailPage;Lcom/amazon/kindle/nln/IThumbnailPage;)I
    .locals 0

    .line 28
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 29
    invoke-interface {p2}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    .line 31
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/amazon/kindle/nln/IThumbnailPage;

    check-cast p2, Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/nln/IThumbnailPage$1;->compare(Lcom/amazon/kindle/nln/IThumbnailPage;Lcom/amazon/kindle/nln/IThumbnailPage;)I

    move-result p1

    return p1
.end method
