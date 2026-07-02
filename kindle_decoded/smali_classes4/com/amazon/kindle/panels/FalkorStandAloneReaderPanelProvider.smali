.class public final Lcom/amazon/kindle/panels/FalkorStandAloneReaderPanelProvider;
.super Lcom/amazon/kindle/panels/StandAloneReaderPanelProvider;
.source "FalkorStandAloneReaderPanelProvider.kt"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/panels/PanelProviderState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/StandAloneReaderPanelProvider;-><init>(Lcom/amazon/kindle/panels/PanelProviderState;)V

    return-void
.end method


# virtual methods
.method protected setupHeaderButton()V
    .locals 4

    .line 23
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    sget-object v3, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-eq v2, v3, :cond_3

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 27
    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v2, Lcom/amazon/kindle/thirdparty/R$style;->FalkorEpisodeListHeaderTextLightMode:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_2

    .line 25
    :cond_3
    :goto_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v2, Lcom/amazon/kindle/thirdparty/R$style;->FalkorEpisodeListHeaderTextDarkMode:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 29
    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 30
    sget v1, Lcom/amazon/kindle/thirdparty/R$layout;->reader_nav_panel_episode_list_header:I

    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/TextView;

    .line 31
    new-instance v1, Lcom/amazon/kindle/panels/FalkorStandAloneReaderPanelProvider$setupHeaderButton$1;

    invoke-direct {v1}, Lcom/amazon/kindle/panels/FalkorStandAloneReaderPanelProvider$setupHeaderButton$1;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 39
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    .line 30
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
