.class public final Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$smoothSnapToPosition$smoothScroller$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "TableOfContentsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->smoothSnapToPosition(Landroidx/recyclerview/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $snapMode:I

.field final synthetic $this_smoothSnapToPosition:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;ILandroid/content/Context;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$smoothSnapToPosition$smoothScroller$1;->$this_smoothSnapToPosition:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$smoothSnapToPosition$smoothScroller$1;->$snapMode:I

    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x41f00000    # 30.0f

    .line 123
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0

    .line 126
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method protected getHorizontalSnapPreference()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$smoothSnapToPosition$smoothScroller$1;->$snapMode:I

    return v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$smoothSnapToPosition$smoothScroller$1;->$snapMode:I

    return v0
.end method
