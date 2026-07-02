.class Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$1;
.super Ljava/lang/Object;
.source "BreadcrumbManager.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;-><init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

.field final synthetic val$viewRoot:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;Landroid/view/ViewGroup;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$1;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    iput-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$1;->val$viewRoot:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/4 p9, 0x0

    .line 168
    :goto_0
    sget p3, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->BREADCRUMB_COUNT:I

    if-ge p9, p3, :cond_2

    .line 169
    iget-object p3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$1;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-static {p3}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->access$000(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    move-result-object p3

    aget-object p3, p3, p9

    invoke-virtual {p3}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->getPageThumbnail()Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    .line 174
    iget p5, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p5, :cond_1

    iget p5, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez p5, :cond_1

    iget-object p5, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$1;->val$viewRoot:Landroid/view/ViewGroup;

    invoke-static {p3, p5, p1}, Lcom/amazon/android/util/UIUtils;->getPositionInParent(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 177
    iget-object p3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$1;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-static {p3}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->access$100(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    move-result-object p3

    aget p5, p1, p2

    const/4 p6, 0x1

    aget p7, p1, p6

    aget p8, p1, p2

    iget v0, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr p8, v0

    aget p6, p1, p6

    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int v0, p6, p4

    move p4, p9

    move p6, p7

    move p7, p8

    move p8, v0

    invoke-virtual/range {p3 .. p8}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->setBreadcrumbPageRect(IIIII)V

    :cond_1
    :goto_1
    add-int/lit8 p9, p9, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
