.class public Lcom/amazon/kindle/nln/VisiblePagesData;
.super Ljava/lang/Object;
.source "VisiblePagesData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;
    }
.end annotation


# instance fields
.field public lastBreadcrumbPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

.field public lastBreadcrumbPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

.field public middleVisiblePageIndex:I

.field public mrprPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

.field public mrprPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

.field public onScreenViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public waypointPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

.field public waypointPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;I",
            "Lcom/amazon/kindle/nln/PageThumbnailViewHolder;",
            "Lcom/amazon/kindle/nln/PageThumbnailViewHolder;",
            "Lcom/amazon/kindle/nln/PageThumbnailViewHolder;",
            "Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;",
            "Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;",
            "Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->onScreenViews:Ljava/util/List;

    .line 47
    invoke-virtual/range {p0 .. p8}, Lcom/amazon/kindle/nln/VisiblePagesData;->updateData(Ljava/util/List;ILcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->onScreenViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->mrprPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 68
    iput-object v0, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 69
    iput-object v0, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->lastBreadcrumbPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 70
    iput-object v0, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->mrprPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    .line 71
    iput-object v0, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    .line 72
    iput-object v0, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->lastBreadcrumbPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    return-void
.end method

.method public updateData(Ljava/util/List;ILcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;I",
            "Lcom/amazon/kindle/nln/PageThumbnailViewHolder;",
            "Lcom/amazon/kindle/nln/PageThumbnailViewHolder;",
            "Lcom/amazon/kindle/nln/PageThumbnailViewHolder;",
            "Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;",
            "Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;",
            "Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;",
            ")V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->onScreenViews:Ljava/util/List;

    .line 56
    iput p2, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->middleVisiblePageIndex:I

    .line 57
    iput-object p3, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->mrprPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 58
    iput-object p4, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 59
    iput-object p5, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->lastBreadcrumbPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 60
    iput-object p6, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->mrprPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    .line 61
    iput-object p7, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    .line 62
    iput-object p8, p0, Lcom/amazon/kindle/nln/VisiblePagesData;->lastBreadcrumbPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    return-void
.end method
