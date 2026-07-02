.class Lcom/amazon/krf/platform/KRIFThumbnailManager$1;
.super Ljava/lang/Object;
.source "KRIFThumbnailManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRIFThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/krf/platform/KRFPageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRIFThumbnailManager;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$1;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/krf/platform/KRFPageView;Lcom/amazon/krf/platform/KRFPageView;)I
    .locals 2

    .line 84
    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFPageView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    .line 85
    invoke-virtual {p2}, Lcom/amazon/krf/platform/KRFPageView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    .line 96
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    sub-int/2addr p1, p2

    if-eqz p1, :cond_1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 81
    check-cast p1, Lcom/amazon/krf/platform/KRFPageView;

    check-cast p2, Lcom/amazon/krf/platform/KRFPageView;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/krf/platform/KRIFThumbnailManager$1;->compare(Lcom/amazon/krf/platform/KRFPageView;Lcom/amazon/krf/platform/KRFPageView;)I

    move-result p1

    return p1
.end method
