.class public abstract Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;
.super Lcom/amazon/falkor/BaseWebViewFragment;
.source "WebViewFragments.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebViewFragments.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewFragments.kt\ncom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment\n*L\n1#1,123:1\n*E\n"
.end annotation


# instance fields
.field private spinner:Landroid/view/View;

.field private final webViewCallback:Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "fragmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/falkor/BaseWebViewFragment;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$webViewCallback$1;

    sget-object v1, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v1}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-direct {v0, p0, p1, p1, v1}, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$webViewCallback$1;-><init>(Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;->webViewCallback:Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    return-void
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;)Lkotlin/Lazy;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;->getMessageQueue()Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setWidgetsVisibility(Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;->setWidgetsVisibility(Z)V

    return-void
.end method

.method private final setWidgetsVisibility(Z)V
    .locals 5

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 87
    :goto_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 88
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;->setParentBackground(Landroid/view/ViewGroup;)V

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseWebViewFragment;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object p1

    const-wide/16 v2, 0xc8

    if-eqz p1, :cond_3

    .line 93
    invoke-virtual {p1}, Landroid/webkit/WebView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 94
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 95
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 96
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 98
    :cond_3
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;->spinner:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$setWidgetsVisibility$2$1;

    invoke-direct {v1, p1}, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$setWidgetsVisibility$2$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseWebViewFragment;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setAlpha(F)V

    .line 110
    :cond_5
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;->spinner:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method protected final getWebViewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;->webViewCallback:Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/falkor/BaseWebViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 66
    sget-object p3, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v0}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sdk.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v1, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    sget-object v2, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v2}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->isReaderInDarkMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v1

    .line 66
    invoke-virtual {p3, v0, v1}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->getContextThemeWrapper(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object p3

    .line 68
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 69
    sget p3, Lcom/amazon/falkor/R$layout;->bottom_sheet_spinner:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;->spinner:Landroid/view/View;

    .line 71
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseWebViewFragment;->getSpinnerWebViewContainer()Landroid/view/ViewGroup;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;->webViewCallback:Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    invoke-virtual {p1}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->isReady()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 74
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;->setWidgetsVisibility(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;->setWidgetsVisibility(Z)V

    :goto_0
    return-object p2
.end method

.method public abstract setParentBackground(Landroid/view/ViewGroup;)V
.end method
