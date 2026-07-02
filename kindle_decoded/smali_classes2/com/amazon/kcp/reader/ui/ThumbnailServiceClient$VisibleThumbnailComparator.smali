.class final Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;
.super Ljava/lang/Object;
.source "ThumbnailServiceClient.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VisibleThumbnailComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field private centerPage:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;->centerPage:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;)I
    .locals 1

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;->getPageIndex()I

    move-result p1

    .line 49
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;->getPageIndex()I

    move-result p2

    .line 50
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;->centerPage:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;->centerPage:I

    sub-int/2addr v0, p2

    .line 51
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;

    check-cast p2, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;->compare(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;)I

    move-result p1

    return p1
.end method

.method public setCenterPage(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;->centerPage:I

    return-void
.end method
