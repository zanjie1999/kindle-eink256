.class public Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;
.super Ljava/lang/Object;
.source "DragIconUpdateManager.kt"


# instance fields
.field private final chevronView:Landroid/view/View;

.field private final parent:Landroid/view/View;

.field private final pillView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;->parent:Landroid/view/View;

    .line 13
    sget v0, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_pill:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;->pillView:Landroid/view/View;

    .line 14
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;->parent:Landroid/view/View;

    sget v0, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_chevron:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;->chevronView:Landroid/view/View;

    .line 17
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;->parent:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;->chevronView:Landroid/view/View;

    const-string v0, "chevronView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 19
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;->pillView:Landroid/view/View;

    const-string v0, "pillView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public setSlideOffset(F)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;->chevronView:Landroid/view/View;

    const-string v1, "chevronView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;->pillView:Landroid/view/View;

    const-string v1, "pillView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
