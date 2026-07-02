.class Lcom/amazon/kcp/library/LibraryFilterGroup$1;
.super Ljava/lang/Object;
.source "LibraryFilterGroup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryFilterGroup;-><init>(Ljava/lang/String;IILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kcp/library/LibraryFilterItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryFilterGroup;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/library/LibraryFilterItem;Lcom/amazon/kcp/library/LibraryFilterItem;)I
    .locals 0

    .line 49
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getPriority()I

    move-result p1

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getPriority()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 46
    check-cast p1, Lcom/amazon/kcp/library/LibraryFilterItem;

    check-cast p2, Lcom/amazon/kcp/library/LibraryFilterItem;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryFilterGroup$1;->compare(Lcom/amazon/kcp/library/LibraryFilterItem;Lcom/amazon/kcp/library/LibraryFilterItem;)I

    move-result p1

    return p1
.end method
