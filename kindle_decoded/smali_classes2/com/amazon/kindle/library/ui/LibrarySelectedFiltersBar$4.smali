.class Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$4;
.super Landroid/view/animation/Animation;
.source "LibrarySelectedFiltersBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->slideUp(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$originalHeight:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;Landroid/view/View;I)V
    .locals 0

    .line 184
    iput-object p2, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$4;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$4;->val$originalHeight:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 187
    invoke-static {}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->access$300()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    .line 188
    iget-object p2, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$4;->val$v:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$4;->val$v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$4;->val$originalHeight:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 191
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$4;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
