.class public final Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$Companion$resumeBooksComparator$1;
.super Ljava/lang/Object;
.source "LibraryCardDataProvider.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getLastAccessed(Lcom/amazon/kcp/library/ILibraryDisplayItem;)J
    .locals 2

    if-eqz p1, :cond_0

    .line 323
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getLastAccessed()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)I
    .locals 3

    const-string v0, "lhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rhs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    invoke-direct {p0, p2}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$Companion$resumeBooksComparator$1;->getLastAccessed(Lcom/amazon/kcp/library/ILibraryDisplayItem;)J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$Companion$resumeBooksComparator$1;->getLastAccessed(Lcom/amazon/kcp/library/ILibraryDisplayItem;)J

    move-result-wide p1

    cmp-long v2, v0, p1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 318
    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    check-cast p2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$Companion$resumeBooksComparator$1;->compare(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)I

    move-result p1

    return p1
.end method
