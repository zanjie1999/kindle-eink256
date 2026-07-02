.class public abstract Lcom/amazon/falkor/BaseWebViewFragment;
.super Lcom/amazon/falkor/BaseRefreshableFragment;
.source "BottomSheetController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomSheetController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSheetController.kt\ncom/amazon/falkor/BaseWebViewFragment\n*L\n1#1,286:1\n*E\n"
.end annotation


# instance fields
.field private actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

.field private currentWebView:Landroid/webkit/WebView;

.field private final fragmentId:Ljava/lang/String;

.field private spinnerWebViewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/BaseWebViewFragment;->fragmentId:Ljava/lang/String;

    return-void
.end method

.method private final getIsInDarkMode()Z
    .locals 2

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "is_in_dark_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final prepareWebView(Landroid/webkit/WebView;Landroid/view/ViewGroup;)V
    .locals 3

    .line 252
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 254
    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    invoke-direct {p0}, Lcom/amazon/falkor/BaseWebViewFragment;->getIsInDarkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    sget v0, Lcom/amazon/falkor/R$color;->background_dark:I

    goto :goto_0

    .line 258
    :cond_2
    sget v0, Lcom/amazon/falkor/R$color;->background_light:I

    .line 260
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 261
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final setMaxHeight()V
    .locals 2

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "requireContext().resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    .line 248
    iget-object v1, p0, Lcom/amazon/falkor/BaseWebViewFragment;->actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    if-eqz v1, :cond_0

    float-to-int v0, v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;->setMaxHeight(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final getCurrentWebView()Landroid/webkit/WebView;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/falkor/BaseWebViewFragment;->currentWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected final getSpinnerWebViewContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazon/falkor/BaseWebViewFragment;->spinnerWebViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected abstract getWebView()Landroid/webkit/WebView;
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string/jumbo v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    invoke-direct {p0}, Lcom/amazon/falkor/BaseWebViewFragment;->setMaxHeight()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    sget p2, Lcom/amazon/falkor/R$layout;->bottom_sheet_webview_container:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eqz p1, :cond_5

    check-cast p1, Landroid/view/ViewGroup;

    .line 222
    sget v0, Lcom/amazon/falkor/R$id;->webview_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    .line 223
    sget p2, Lcom/amazon/falkor/R$id;->webview_with_spinner_container:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    instance-of v1, p2, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/amazon/falkor/BaseWebViewFragment;->spinnerWebViewContainer:Landroid/view/ViewGroup;

    .line 224
    sget p2, Lcom/amazon/falkor/R$id;->drag_icon_layout_stub:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Landroid/view/ViewStub;

    .line 225
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseWebViewFragment;->shouldShowHandle()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 226
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseWebViewFragment;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 229
    invoke-direct {p0, p2, v0}, Lcom/amazon/falkor/BaseWebViewFragment;->prepareWebView(Landroid/webkit/WebView;Landroid/view/ViewGroup;)V

    .line 230
    iput-object p2, p0, Lcom/amazon/falkor/BaseWebViewFragment;->currentWebView:Landroid/webkit/WebView;

    :cond_2
    return-object p1

    .line 224
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string/jumbo p2, "null cannot be cast to non-null type android.view.ViewStub"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 237
    sget-object p1, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    sget-object p2, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {p2}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/falkor/BaseWebViewFragment;->fragmentId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->emitBottomSheetShow(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/amazon/falkor/BaseWebViewFragment;->setMaxHeight()V

    return-void
.end method

.method protected final requireURL()Ljava/lang/String;
    .locals 2

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 266
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    return-object v0

    .line 267
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setActions(Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/amazon/falkor/BaseWebViewFragment;->actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    return-void
.end method

.method protected abstract shouldShowHandle()Z
.end method
