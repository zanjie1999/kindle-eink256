.class public final Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;
.super Landroid/widget/LinearLayout;
.source "CSBreadcrumbView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private arrowView:Landroid/widget/ImageView;

.field private contentContainer:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbContentLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final adjustArrowPosition(F)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;->arrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 50
    sget v0, Lcom/amazon/kindle/krl/R$id;->cs_breadcrumb_content_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbContentLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbContentLayout;

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;->contentContainer:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbContentLayout;

    .line 51
    sget v0, Lcom/amazon/kindle/krl/R$id;->breadcrumb_arrow:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;->arrowView:Landroid/widget/ImageView;

    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pageLabel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;->contentContainer:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbContentLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbContentLayout;->setLabel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
