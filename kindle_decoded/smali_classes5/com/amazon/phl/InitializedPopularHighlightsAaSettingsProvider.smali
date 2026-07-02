.class public final Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;
.super Ljava/lang/Object;
.source "PopularHighlightsAaSettingsProvider.kt"

# interfaces
.implements Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider;


# instance fields
.field private final AA_PRIORITY:I

.field private metricsReporter:Lcom/amazon/phl/metrics/InBookMetricsReporter;

.field private phlManager:Lcom/amazon/phl/PopularHighlightsManager;

.field private phlOnOffToggle:Lcom/amazon/phl/settings/PHLOnOffToggle;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;Lcom/amazon/phl/settings/PHLOnOffToggle;Lcom/amazon/phl/metrics/InBookMetricsReporter;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "phlManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "phlOnOffToggle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsReporter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2bc

    .line 103
    iput v0, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->AA_PRIORITY:I

    .line 107
    iput-object p1, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 108
    iput-object p2, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->phlManager:Lcom/amazon/phl/PopularHighlightsManager;

    .line 109
    iput-object p3, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->phlOnOffToggle:Lcom/amazon/phl/settings/PHLOnOffToggle;

    .line 110
    iput-object p4, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->metricsReporter:Lcom/amazon/phl/metrics/InBookMetricsReporter;

    return-void
.end method

.method public static final synthetic access$getMetricsReporter$p(Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;)Lcom/amazon/phl/metrics/InBookMetricsReporter;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->metricsReporter:Lcom/amazon/phl/metrics/InBookMetricsReporter;

    return-object p0
.end method

.method public static final synthetic access$getPhlManager$p(Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;)Lcom/amazon/phl/PopularHighlightsManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->phlManager:Lcom/amazon/phl/PopularHighlightsManager;

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method public static final synthetic access$updateToggleValue(Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;ZLandroid/content/Context;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->updateToggleValue(ZLandroid/content/Context;)V

    return-void
.end method

.method private final createPopularHighlightsAaSetting(Landroid/content/Context;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 9

    .line 121
    iget-object v0, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0, p1}, Lcom/amazon/phl/settings/PHLSettingUtil;->getPopularHighlightsStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 122
    new-instance v7, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;

    sget v1, Lcom/amazon/kindle/popularhighlights/R$string;->kre_aa_menu_v2_popular_highlights_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "context.getString(R.stri\u2026popular_highlights_title)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget v1, Lcom/amazon/kindle/popularhighlights/R$string;->kre_aa_menu_v2_popular_highlights_subtitle:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "context.getString(R.stri\u2026ular_highlights_subtitle)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->getToggleHandler(Landroid/content/Context;)Lkotlin/jvm/functions/Function1;

    move-result-object v4

    const-string p1, "initialValue"

    .line 125
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 126
    sget p1, Lcom/amazon/kindle/popularhighlights/R$id;->aa_menu_v2_popular_highlights_toggle:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v7

    .line 122
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Integer;)V

    .line 127
    invoke-virtual {p0}, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->getVisibilityHandler()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    .line 128
    new-instance p1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->POPULAR_HIGHLIGHTS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    iget v3, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->AA_PRIORITY:I

    const/4 v6, 0x0

    const/16 v0, 0x10

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, v7

    move v7, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method private final getToggleHandler(Landroid/content/Context;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider$getToggleHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider$getToggleHandler$1;-><init>(Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;Landroid/content/Context;)V

    return-object v0
.end method

.method private final updateToggleValue(ZLandroid/content/Context;)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->phlOnOffToggle:Lcom/amazon/phl/settings/PHLOnOffToggle;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->setValue(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->phlManager:Lcom/amazon/phl/PopularHighlightsManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/phl/PopularHighlightsManager;->onSettingsChange(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 149
    iget-object v0, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/amazon/phl/settings/PHLSettingUtil;->savePopularHighlightsStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 152
    const-class p1, Lcom/amazon/kindle/setting/item/ItemsProvider;

    invoke-static {p1}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/setting/item/ItemsProvider;

    .line 154
    instance-of v0, p2, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;

    if-eqz v0, :cond_0

    .line 155
    check-cast p2, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;

    iget-object v0, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->notifyItemUpdate(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public deleteAaTheme(I)V
    .locals 0

    .line 97
    invoke-static {p0, p1}, Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider$DefaultImpls;->deleteAaTheme(Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider;I)V

    return-void
.end method

.method public deleteAaTheme(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/amazon/phl/settings/PHLSettingUtil;->deletePopularHighlightsStatusForAaTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Integer;)V

    return-void
.end method

.method public getSettings(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/viewoptions/AaTabType;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->MORE_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 115
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->createPopularHighlightsAaSetting(Landroid/content/Context;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getVisibilityHandler()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider$getVisibilityHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider$getVisibilityHandler$1;-><init>(Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;)V

    return-object v0
.end method

.method public loadSettingsFromAaTheme(I)V
    .locals 0

    .line 97
    invoke-static {p0, p1}, Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider$DefaultImpls;->loadSettingsFromAaTheme(Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider;I)V

    return-void
.end method

.method public loadSettingsFromAaTheme(ILandroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0, p2}, Lcom/amazon/phl/settings/PHLSettingUtil;->getPopularHighlightsStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/amazon/phl/settings/PHLSettingUtil;->getPopularHighlightsStatusForAaTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "newPhlStatus"

    .line 186
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->updateToggleValue(ZLandroid/content/Context;)V

    .line 187
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 188
    invoke-direct {p0, p2}, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->createPopularHighlightsAaSetting(Landroid/content/Context;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->notifySettingUpdate(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    :cond_0
    return-void
.end method

.method public saveSettingsToAaTheme(I)V
    .locals 0

    .line 97
    invoke-static {p0, p1}, Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider$DefaultImpls;->saveSettingsToAaTheme(Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider;I)V

    return-void
.end method

.method public saveSettingsToAaTheme(ILandroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->phlOnOffToggle:Lcom/amazon/phl/settings/PHLOnOffToggle;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v0, p2, p1, v1}, Lcom/amazon/phl/settings/PHLSettingUtil;->savePopularHighlightsStatusForAaTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method
