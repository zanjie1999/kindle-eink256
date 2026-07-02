.class public final Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;
.super Ljava/lang/Object;
.source "AboutThisBookAaSettingsProvider.kt"

# interfaces
.implements Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;


# instance fields
.field private final AA_PRIORITY:I

.field private final IgnoredBookFormats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/content/BookFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final IgnoredContentClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/content/IBook$BookContentClass;",
            ">;"
        }
    .end annotation
.end field

.field private final IgnoredContentTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/content/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private final IgnoredMimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onOffToggle:Lcom/amazon/kindle/krx/settings/OnOffToggle;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private settingsManager:Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;)V
    .locals 4

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settingsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->settingsManager:Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

    .line 102
    invoke-virtual {p2}, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;->getControlForReader()Lcom/amazon/kindle/krx/settings/OnOffToggle;

    move-result-object p1

    const-string/jumbo p2, "settingsManager.controlForReader"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->onOffToggle:Lcom/amazon/kindle/krx/settings/OnOffToggle;

    const/16 p1, 0x1f4

    .line 104
    iput p1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->AA_PRIORITY:I

    const/4 p1, 0x3

    new-array p2, p1, [Lcom/amazon/kindle/krx/content/BookFormat;

    .line 106
    sget-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->MOP:Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    sget-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->PDF:Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v2, 0x1

    aput-object v0, p2, v2

    .line 107
    sget-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->YJ_MAGAZINE:Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v3, 0x2

    aput-object v0, p2, v3

    .line 106
    invoke-static {p2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->IgnoredBookFormats:Ljava/util/Set;

    new-array p2, v3, [Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    .line 109
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->COMIC:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    aput-object v0, p2, v1

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->MANGA:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    aput-object v0, p2, v2

    .line 108
    invoke-static {p2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->IgnoredContentClasses:Ljava/util/Set;

    const/4 p2, 0x6

    new-array p2, p2, [Lcom/amazon/kindle/krx/content/ContentType;

    .line 110
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v0, p2, v1

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->NEWSPAPER:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v0, p2, v2

    .line 111
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->OFFICE:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v0, p2, v3

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->PDF:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v0, p2, p1

    sget-object p1, Lcom/amazon/kindle/krx/content/ContentType;->PDOC:Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v0, 0x4

    aput-object p1, p2, v0

    sget-object p1, Lcom/amazon/kindle/krx/content/ContentType;->PERSONAL_LETTER:Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v0, 0x5

    aput-object p1, p2, v0

    .line 110
    invoke-static {p2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->IgnoredContentTypes:Ljava/util/Set;

    const-string p1, "application/x-kfx-periodicals-v2-magazine"

    .line 112
    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->IgnoredMimeTypes:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getIgnoredBookFormats$p(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;)Ljava/util/Set;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->IgnoredBookFormats:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getIgnoredContentClasses$p(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;)Ljava/util/Set;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->IgnoredContentClasses:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getIgnoredContentTypes$p(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;)Ljava/util/Set;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->IgnoredContentTypes:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getIgnoredMimeTypes$p(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;)Ljava/util/Set;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->IgnoredMimeTypes:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method public static final synthetic access$reportMetricsForAboutThisBookSwitch(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;ZZLcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->reportMetricsForAboutThisBookSwitch(ZZLcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;I)V

    return-void
.end method

.method public static final synthetic access$updateToggleValue(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;Landroid/content/Context;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->updateToggleValue(Landroid/content/Context;Z)V

    return-void
.end method

.method private final createAboutThisBookSetting(Landroid/content/Context;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 9

    .line 129
    iget-object v0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0, p1}, Lcom/amazon/ea/util/AboutThisBookSettingUtil;->getAboutThisBookStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 130
    new-instance v7, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_feature_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "context.getString(R.stri\u2026artactions_feature_title)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget v1, Lcom/amazon/kindle/ea/R$string;->kre_more_rs_about_this_book_context:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "context.getString(R.stri\u2026_about_this_book_context)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->getToggleHandler(Landroid/content/Context;)Lkotlin/jvm/functions/Function1;

    move-result-object v4

    const-string p1, "initialValue"

    .line 133
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 134
    sget p1, Lcom/amazon/kindle/ea/R$id;->aa_menu_v2_about_this_book_toggle:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v7

    .line 130
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Integer;)V

    .line 135
    invoke-virtual {p0}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->getVisibilityHandler()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    .line 136
    new-instance p1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ABOUT_THIS_BOOK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    iget v3, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->AA_PRIORITY:I

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

    .line 155
    new-instance v0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getToggleHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getToggleHandler$1;-><init>(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;Landroid/content/Context;)V

    return-object v0
.end method

.method private final reportMetricsForAboutThisBookSwitch(ZZLcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;I)V
    .locals 2

    const-string v0, "On"

    const-string v1, "Off"

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string p2, "AboutThisBookSwitch"

    .line 202
    invoke-static {p2, p1, v0, p3, p4}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics;->reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;I)V

    return-void
.end method

.method private final shouldGetSettings(Lcom/amazon/kindle/krx/viewoptions/AaTabType;)Z
    .locals 1

    .line 145
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->MORE_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final updateToggleValue(Landroid/content/Context;Z)V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->onOffToggle:Lcom/amazon/kindle/krx/settings/OnOffToggle;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->setValue(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->settingsManager:Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    xor-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;->onSettingsChange(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 172
    iget-object v0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/amazon/ea/util/AboutThisBookSettingUtil;->saveAboutThisBookStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public deleteAaTheme(I)V
    .locals 0

    .line 100
    invoke-static {p0, p1}, Lcom/amazon/ea/IAboutThisBookAaSettingsProvider$DefaultImpls;->deleteAaTheme(Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;I)V

    return-void
.end method

.method public deleteAaTheme(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/amazon/ea/util/AboutThisBookSettingUtil;->deleteAboutThisBookStatusForAaTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Integer;)V

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

    .line 116
    invoke-direct {p0, p1}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->shouldGetSettings(Lcom/amazon/kindle/krx/viewoptions/AaTabType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 117
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 119
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->createAboutThisBookSetting(Landroid/content/Context;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

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

    .line 181
    new-instance v0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getVisibilityHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getVisibilityHandler$1;-><init>(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;)V

    return-object v0
.end method

.method public loadSettingsFromAaTheme(I)V
    .locals 0

    .line 100
    invoke-static {p0, p1}, Lcom/amazon/ea/IAboutThisBookAaSettingsProvider$DefaultImpls;->loadSettingsFromAaTheme(Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;I)V

    return-void
.end method

.method public loadSettingsFromAaTheme(ILandroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0, p2}, Lcom/amazon/ea/util/AboutThisBookSettingUtil;->getAboutThisBookStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/amazon/ea/util/AboutThisBookSettingUtil;->getAboutThisBookStatusForAaTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v1, "newAtbStatus"

    .line 231
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->updateToggleValue(Landroid/content/Context;Z)V

    .line 232
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 233
    invoke-direct {p0, p2}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->createAboutThisBookSetting(Landroid/content/Context;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->notifySettingUpdate(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    :cond_0
    return-void
.end method

.method public saveSettingsToAaTheme(I)V
    .locals 0

    .line 100
    invoke-static {p0, p1}, Lcom/amazon/ea/IAboutThisBookAaSettingsProvider$DefaultImpls;->saveSettingsToAaTheme(Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;I)V

    return-void
.end method

.method public saveSettingsToAaTheme(ILandroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->onOffToggle:Lcom/amazon/kindle/krx/settings/OnOffToggle;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v0, p2, p1, v1}, Lcom/amazon/ea/util/AboutThisBookSettingUtil;->saveAboutThisBookStatusForAaTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method
