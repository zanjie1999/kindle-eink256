.class public final Lcom/amazon/falkor/bottomsheet/StoreTokenWebViewFragment;
.super Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;
.source "StoreTokenBottomSheetController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/falkor/bottomsheet/StoreTokenWebViewFragment$CreateDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    sget-object v0, Lcom/amazon/falkor/BottomSheetID;->STORE_TOKEN_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v0}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getRefreshEvent()Lcom/amazon/kindle/krx/events/IEvent;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/StoreTokenWebViewFragment;->getRefreshEvent()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IEvent;

    return-object v0
.end method

.method protected getRefreshEvent()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getWebView()Landroid/webkit/WebView;
    .locals 11

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    sget-object v0, Lcom/amazon/falkor/webview/FalkorWebViewUtils;->INSTANCE:Lcom/amazon/falkor/webview/FalkorWebViewUtils;

    .line 117
    sget-object v2, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v2}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;->getWebViewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getWebViewClient(Landroid/app/Activity;Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;)Landroid/webkit/WebViewClient;

    move-result-object v2

    const-string/jumbo v3, "sdk.applicationManager.g\u2026ctivity, webViewCallback)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/falkor/BaseWebViewFragment;->requireURL()Ljava/lang/String;

    move-result-object v3

    .line 118
    new-instance v4, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetJSInterface;

    invoke-virtual {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;->getMessageQueue()Lkotlin/Lazy;

    move-result-object v5

    sget-object v6, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v6}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetJSInterface;-><init>(Lkotlin/Lazy;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf0

    const/4 v10, 0x0

    .line 116
    invoke-static/range {v0 .. v10}, Lcom/amazon/falkor/webview/FalkorWebViewUtils;->createAndSetupRoundedWebView$default(Lcom/amazon/falkor/webview/FalkorWebViewUtils;Landroid/content/Context;Landroid/webkit/WebViewClient;Ljava/lang/String;Lcom/amazon/falkor/FalkorJSInterface;ZZZZILjava/lang/Object;)Lcom/amazon/falkor/webview/RoundedWebview;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setParentBackground(Landroid/view/ViewGroup;)V
    .locals 5

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string v4, "is_in_dark_mode"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 125
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->getContextThemeWrapper(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Lcom/amazon/falkor/R$attr;->bottom_sheet_token_upper_background_color:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget v0, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method protected shouldShowHandle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
