.class public final Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment;
.super Landroidx/fragment/app/Fragment;
.source "DocViewerGradientMaskFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 3

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 28
    instance-of v2, v0, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;

    if-eqz v2, :cond_0

    .line 29
    check-cast v0, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;

    invoke-interface {v0}, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;->getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_0
    instance-of v0, v1, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;

    if-eqz v0, :cond_1

    .line 32
    check-cast v1, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;

    invoke-interface {v1}, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;->getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget p3, Lcom/amazon/kindle/krl/R$layout;->doc_viewer_gradient_mask_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment;->getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result p2

    .line 42
    new-instance p3, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment$onCreateView$shaderFactory$1;

    invoke-direct {p3, p2}, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment$onCreateView$shaderFactory$1;-><init>(I)V

    const-string p2, "layout"

    .line 56
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 57
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 58
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Lcom/amazon/kindle/fragment/UserGesture;

    invoke-direct {v0}, Lcom/amazon/kindle/fragment/UserGesture;-><init>()V

    invoke-direct {p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 62
    new-instance p3, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment$onCreateView$2;

    invoke-direct {p3, p2}, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment$onCreateView$2;-><init>(Landroid/view/GestureDetector;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
