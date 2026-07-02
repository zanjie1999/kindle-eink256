.class public final Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;
.super Ljava/lang/Object;
.source "AaSettingHostFragmentManager.kt"

# interfaces
.implements Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaSettingHostFragmentManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaSettingHostFragmentManager.kt\ncom/amazon/kindle/viewoptions/AaSettingHostFragmentManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,177:1\n768#2,11:178\n1819#2,2:189\n1819#2:191\n734#2:192\n825#2,2:193\n1820#2:195\n1328#2:196\n1414#2,5:197\n1013#2:202\n1690#2,2:203\n1738#2,4:205\n1692#2:209\n1328#2:210\n1414#2,5:211\n1711#2,2:216\n1738#2,4:218\n1713#2:222\n768#2,11:223\n1819#2,2:234\n*E\n*S KotlinDebug\n*F\n+ 1 AaSettingHostFragmentManager.kt\ncom/amazon/kindle/viewoptions/AaSettingHostFragmentManager\n*L\n73#1,11:178\n73#1,2:189\n78#1:191\n81#1:192\n81#1,2:193\n78#1:195\n101#1:196\n101#1,5:197\n102#1:202\n112#1,2:203\n113#1,4:205\n112#1:209\n124#1:210\n124#1,5:211\n152#1,2:216\n153#1,4:218\n152#1:222\n164#1,11:223\n164#1,2:234\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager$Companion;


# instance fields
.field private cacheHasVisibleSettings:Z

.field private final context:Landroid/content/Context;

.field private final hostFragment:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

.field private final supportFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final tabSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/viewoptions/AaTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->Companion:Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "docViewer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "supportFragmentManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->context:Landroid/content/Context;

    .line 32
    new-instance p1, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-direct {p1}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->hostFragment:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    .line 33
    invoke-direct {p0, p2}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->getTabSettings(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->tabSettings:Ljava/util/ArrayList;

    .line 34
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->hostFragment:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->setTabSettings(Ljava/util/ArrayList;)V

    .line 35
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->hostFragment:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-virtual {p1, p0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->setDelegate(Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;)V

    .line 36
    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->supportFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private final discoverSettingsForTab(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Lcom/amazon/discovery/Discoveries;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/viewoptions/AaTabType;",
            "Lcom/amazon/discovery/Discoveries<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 198
    check-cast v1, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;

    .line 101
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->context:Landroid/content/Context;

    invoke-interface {v1, p1, v2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;->getSettings(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 199
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 202
    :cond_0
    new-instance p1, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager$discoverSettingsForTab$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager$discoverSettingsForTab$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final getTabSettings(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/viewoptions/AaTab;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    .line 59
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->FONT_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->GUIDED_VIEW_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 60
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->LETTERBOXING_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->LAYOUT_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->THEMES_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->MORE_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    .line 59
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    invoke-direct {v1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;-><init>()V

    .line 63
    new-instance v4, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5, p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 65
    new-instance p1, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {p1, v5, v6, v3, v6}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;-><init>(Landroid/content/Context;Lcom/amazon/ksdk/presets/ReadingPresetsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->initializeThemes()V

    .line 67
    invoke-virtual {v4, p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->setThemesManager(Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V

    .line 68
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->hostFragment:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->setAaThemesManager(Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V

    .line 69
    invoke-virtual {v1, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->setLegacyManager(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    .line 71
    const-class p1, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;

    invoke-static {p1}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object p1

    const-string v3, "Discoveries.of(IAaSettingsProvider::class.java)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;

    if-eqz v6, :cond_0

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;

    .line 74
    invoke-virtual {v4, v1}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->setDataSource(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;)V

    goto :goto_1

    .line 77
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    .line 79
    invoke-direct {p0, v3, p1}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->discoverSettingsForTab(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Lcom/amazon/discovery/Discoveries;)Ljava/util/List;

    move-result-object v4

    .line 192
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    .line 81
    invoke-direct {p0, v8}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->isSettingVisible(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 82
    :cond_5
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_3

    .line 83
    new-instance v5, Lcom/amazon/kindle/viewoptions/AaTab;

    invoke-direct {v5, v3, v4}, Lcom/amazon/kindle/viewoptions/AaTab;-><init>(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Ljava/util/List;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 87
    :cond_6
    invoke-direct {p0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->shouldMergeTabs(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 88
    invoke-direct {p0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->mergeAllTabs(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_7
    return-object v1
.end method

.method private final isSettingVisible(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)Z
    .locals 1

    .line 135
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getVisibilityHandler()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final mergeAllTabs(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/viewoptions/AaTab;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/viewoptions/AaTab;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 212
    check-cast v2, Lcom/amazon/kindle/viewoptions/AaTab;

    .line 124
    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/AaTab;->getSettings()Ljava/util/List;

    move-result-object v2

    .line 213
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 125
    :cond_0
    new-instance p1, Lcom/amazon/kindle/viewoptions/AaTab;

    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->MERGED_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    invoke-direct {p1, v2, v1}, Lcom/amazon/kindle/viewoptions/AaTab;-><init>(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Ljava/util/List;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final readerSettingChangeComplete()V
    .locals 1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->Companion:Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager$Companion;->readerSettingChangeComplete()V

    return-void
.end method

.method private final shouldMergeTabs(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/viewoptions/AaTab;",
            ">;)Z"
        }
    .end annotation

    .line 203
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_3

    .line 204
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/viewoptions/AaTab;

    .line 113
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaTab;->getSettings()Ljava/util/List;

    move-result-object v0

    .line 205
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    .line 207
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    .line 113
    invoke-direct {p0, v4}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->isSettingVisible(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    if-ltz v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    const/4 p1, 0x0

    throw p1

    :cond_6
    :goto_1
    if-gt v3, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_2

    :goto_3
    return v1
.end method


# virtual methods
.method public final destroy()V
    .locals 4

    .line 162
    const-class v0, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;

    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    const-string v1, "Discoveries.of(IAaSettingsProvider::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;

    .line 165
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->getDataSource()Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->getLegacyManager()Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->destroy()V

    .line 166
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->getDataSource()Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->setLegacyManager(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    .line 167
    :cond_3
    invoke-virtual {v1, v3}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->setDataSource(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final hasVisibleSettings()Z
    .locals 6

    .line 147
    iget-boolean v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->cacheHasVisibleSettings:Z

    if-eqz v0, :cond_0

    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->tabSettings:Ljava/util/ArrayList;

    .line 216
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    .line 217
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/viewoptions/AaTab;

    .line 153
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/AaTab;->getSettings()Ljava/util/List;

    move-result-object v1

    .line 218
    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    .line 220
    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    .line 153
    invoke-direct {p0, v5}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->isSettingVisible(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_7
    :goto_1
    if-lez v4, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 222
    :goto_3
    iput-boolean v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->cacheHasVisibleSettings:Z

    return v2
.end method

.method public hideSubordinateFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setLastSubfragmentIdentifier(I)V

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->supportFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->hostFragment:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public final resetScrollViews()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->hostFragment:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->resetScrollViews()V

    return-void
.end method

.method public final showContentFragment()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->supportFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 41
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_fragment_container:I

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->hostFragment:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public showSubordinateFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setLastSubfragmentIdentifier(I)V

    .line 47
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->supportFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->hostFragment:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_fragment_container:I

    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
