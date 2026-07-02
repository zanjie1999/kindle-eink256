.class final Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper$1;
.super Ljava/lang/Object;
.source "ReaderActivityActionButtonHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/krx/ui/IActionButton;Lcom/amazon/kindle/krx/ui/IActionButton;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)I"
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IActionButton;->getPriority()I

    move-result p1

    .line 40
    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/IActionButton;->getPriority()I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lcom/amazon/kindle/krx/ui/IActionButton;

    check-cast p2, Lcom/amazon/kindle/krx/ui/IActionButton;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper$1;->compare(Lcom/amazon/kindle/krx/ui/IActionButton;Lcom/amazon/kindle/krx/ui/IActionButton;)I

    move-result p1

    return p1
.end method
