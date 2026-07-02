.class final Lcom/amazon/kcp/library/LibraryCursorFactory$1;
.super Ljava/lang/Object;
.source "LibraryCursorFactory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryCursorFactory;->sortByRecency(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)I
    .locals 0

    .line 473
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getLastAccessed()Ljava/util/Date;

    move-result-object p1

    .line 474
    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getLastAccessed()Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 482
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 470
    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    check-cast p2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryCursorFactory$1;->compare(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)I

    move-result p1

    return p1
.end method
