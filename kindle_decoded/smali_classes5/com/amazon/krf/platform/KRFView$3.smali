.class Lcom/amazon/krf/platform/KRFView$3;
.super Ljava/lang/Object;
.source "KRFView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/krf/platform/element/PageElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/KRFView;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRFView;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFView$3;->this$0:Lcom/amazon/krf/platform/KRFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/krf/platform/element/PageElement;Lcom/amazon/krf/platform/element/PageElement;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 304
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/krf/platform/element/PageElement;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/krf/platform/element/PageElement;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 293
    check-cast p1, Lcom/amazon/krf/platform/element/PageElement;

    check-cast p2, Lcom/amazon/krf/platform/element/PageElement;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/krf/platform/KRFView$3;->compare(Lcom/amazon/krf/platform/element/PageElement;Lcom/amazon/krf/platform/element/PageElement;)I

    move-result p1

    return p1
.end method
