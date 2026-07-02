.class public Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;
.super Landroid/widget/LinearLayout;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/toast/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnackbarLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnAttachStateChangeListener;,
        Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnLayoutChangeListener;
    }
.end annotation


# instance fields
.field private mActionView:Landroid/widget/TextView;

.field private mMessageView:Landroid/widget/TextView;

.field private mOnAttachStateChangeListener:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

.field private mOnLayoutChangeListener:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 447
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 451
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 453
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_elevation:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    const/4 p2, 0x1

    .line 454
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 459
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$layout;->layout_snackbar_include:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 461
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 463
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method getActionView()Landroid/widget/TextView;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/TextView;

    return-object v0
.end method

.method getMessageView()Landroid/widget/TextView;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 492
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 493
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 494
    invoke-interface {v0, p0}, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 500
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 501
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 502
    invoke-interface {v0, p0}, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 469
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 470
    sget v0, Lcom/amazon/kindle/krl/R$id;->snackbar_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    .line 471
    sget v0, Lcom/amazon/kindle/krl/R$id;->snackbar_action:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 484
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 485
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 486
    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnAttachStateChangeListener;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    return-void
.end method

.method setOnLayoutChangeListener(Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    return-void
.end method
