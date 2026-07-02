.class public final Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;
.super Landroidx/fragment/app/Fragment;
.source "AaSettingsTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaSettingsTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaSettingsTabFragment.kt\ncom/amazon/kindle/viewoptions/AaSettingsTabFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,219:1\n1828#2,3:220\n1819#2,2:223\n*E\n*S KotlinDebug\n*F\n+ 1 AaSettingsTabFragment.kt\ncom/amazon/kindle/viewoptions/AaSettingsTabFragment\n*L\n131#1,3:220\n161#1,2:223\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

.field private dividerViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private scrollView:Landroidx/core/widget/NestedScrollView;

.field private scrollViewContent:Landroid/widget/LinearLayout;

.field private settingDisabledViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private settingUpdateListener:Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;

.field private settingViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private tab:Lcom/amazon/kindle/viewoptions/AaTab;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingViews:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingDisabledViews:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->dividerViews:Ljava/util/Map;

    .line 44
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public static final synthetic access$changeListener(Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->changeListener(I)V

    return-void
.end method

.method public static final synthetic access$getSettingDisabledViews$p(Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;)Ljava/util/Map;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingDisabledViews:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getSettingViews$p(Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;)Ljava/util/Map;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingViews:Ljava/util/Map;

    return-object p0
.end method

.method private final changeListener(I)V
    .locals 3

    .line 204
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->updateSettingVisibility()V

    .line 206
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->isPluginSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/amazon/ksdk/presets/AaSettingType;->PLUGIN_CHANGED:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 214
    :cond_0
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->isThemeSetting(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 215
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;

    sget-object v1, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;->SETTING_CHANGED:Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;-><init>(Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    return-void
.end method

.method private final viewForDisplay(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILandroid/content/Context;)Landroid/view/View;
    .locals 10

    .line 185
    instance-of v0, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;

    if-eqz v0, :cond_0

    .line 186
    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->getView()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 188
    :cond_0
    instance-of v0, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    if-eqz v0, :cond_2

    .line 189
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->tab:Lcom/amazon/kindle/viewoptions/AaTab;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/amazon/kindle/viewoptions/AaTab;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 190
    :goto_0
    new-instance v9, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;->getSubTitle()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;->getStateDescriptionGetter()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;->getBackHandler()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;->getId()Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v9

    move-object v1, p3

    move-object v5, p2

    .line 190
    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;-><init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;)V

    .line 192
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$viewForDisplay$1;

    invoke-direct {v0, p1, p3, p2}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$viewForDisplay$1;-><init>(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->setFragmentCreationHandler(Lkotlin/jvm/functions/Function1;)V

    move-object p1, v9

    goto :goto_1

    .line 198
    :cond_2
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils;

    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$viewForDisplay$2;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$viewForDisplay$2;-><init>(Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;I)V

    invoke-virtual {v0, p3, p2, p1, v1}, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils;->createViewForAaSettingDisplay(Landroid/content/Context;ILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function1;)Landroid/view/View;

    move-result-object p1

    :goto_1
    return-object p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget p3, Lcom/amazon/kindle/krl/R$layout;->view_options_tab_recycler_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    sget p2, Lcom/amazon/kindle/krl/R$id;->view_options_tab_scrollview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->scrollView:Landroidx/core/widget/NestedScrollView;

    .line 50
    sget p2, Lcom/amazon/kindle/krl/R$id;->view_options_tab_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->scrollViewContent:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingDisabledViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->dividerViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

    .line 60
    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->tab:Lcom/amazon/kindle/viewoptions/AaTab;

    .line 63
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingUpdateListener:Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;

    if-eqz v1, :cond_0

    .line 64
    invoke-static {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->deregisterListener(Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;)V

    .line 65
    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingUpdateListener:Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->tab:Lcom/amazon/kindle/viewoptions/AaTab;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaTab;->getSettings()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->scrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_4

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->tab:Lcom/amazon/kindle/viewoptions/AaTab;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaTab;->getType()Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 106
    :pswitch_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->view_options_tab_scrollview_merged:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    goto :goto_2

    .line 103
    :pswitch_1
    sget v0, Lcom/amazon/kindle/krl/R$id;->view_options_tab_scrollview_letterboxing:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    goto :goto_2

    .line 100
    :pswitch_2
    sget v0, Lcom/amazon/kindle/krl/R$id;->view_options_tab_scrollview_guided_view:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    goto :goto_2

    .line 97
    :pswitch_3
    sget v0, Lcom/amazon/kindle/krl/R$id;->view_options_tab_scrollview_more:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    goto :goto_2

    .line 94
    :pswitch_4
    sget v0, Lcom/amazon/kindle/krl/R$id;->view_options_tab_scrollview_layout:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    goto :goto_2

    .line 91
    :pswitch_5
    sget v0, Lcom/amazon/kindle/krl/R$id;->view_options_tab_scrollview_font:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    goto :goto_2

    .line 88
    :pswitch_6
    sget v0, Lcom/amazon/kindle/krl/R$id;->view_options_tab_scrollview_themes:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 112
    :cond_4
    :goto_2
    new-instance p1, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$onViewCreated$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$onViewCreated$2;-><init>(Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingUpdateListener:Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;

    if-eqz p1, :cond_5

    .line 127
    invoke-static {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->registerListener(Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;)V

    .line 130
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->tab:Lcom/amazon/kindle/viewoptions/AaTab;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaTab;->getSettings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 221
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_d

    check-cast v2, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    .line 132
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getIdentifier()I

    move-result v5

    const-string v6, "context"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4, v5, p1}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->viewForDisplay(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILandroid/content/Context;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 134
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->scrollViewContent:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    :cond_6
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingViews:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 137
    :cond_7
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getDisabledDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getIdentifier()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->viewForDisplay(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILandroid/content/Context;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 139
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->scrollViewContent:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_8

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    :cond_8
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingDisabledViews:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 143
    :cond_9
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->tab:Lcom/amazon/kindle/viewoptions/AaTab;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/AaTab;->getSettings()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-eq v1, v4, :cond_c

    .line 144
    :cond_a
    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/AaSettingDivider;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingDivider;-><init>(Landroid/content/Context;)V

    .line 145
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->scrollViewContent:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    :cond_b
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->dividerViews:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move v1, v3

    goto :goto_3

    .line 221
    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    throw p2

    .line 151
    :cond_e
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->updateSettingVisibility()V

    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final resetScrollView()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->scrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScrollY(I)V

    :cond_0
    return-void
.end method

.method public final setDelegate(Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

    return-void
.end method

.method public final setTab(Lcom/amazon/kindle/viewoptions/AaTab;)V
    .locals 1

    const-string/jumbo v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->tab:Lcom/amazon/kindle/viewoptions/AaTab;

    return-void
.end method

.method public final updateSettingVisibility()V
    .locals 8

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    .line 162
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getVisibilityHandler()Lkotlin/jvm/functions/Function0;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    .line 163
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingViews:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 164
    sget-object v7, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    if-ne v4, v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    const/16 v7, 0x8

    :goto_1
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_2
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->settingDisabledViews:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_4

    .line 167
    sget-object v7, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->DISABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    if-ne v4, v7, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_4
    sget-object v5, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    if-ne v4, v5, :cond_5

    .line 172
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->dividerViews:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 174
    :cond_5
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->dividerViews:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    move-object v1, v2

    goto :goto_0

    .line 180
    :cond_7
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->dividerViews:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method
