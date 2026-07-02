.class public final Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;
.super Landroid/widget/LinearLayout;
.source "DisclosureFragmentContentView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisclosureFragmentContentView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisclosureFragmentContentView.kt\ncom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,115:1\n1819#2,2:116\n*E\n*S KotlinDebug\n*F\n+ 1 DisclosureFragmentContentView.kt\ncom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView\n*L\n104#1,2:116\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private aaSettingUpdateListener:Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->settingViews:Ljava/util/Map;

    .line 26
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-direct {p0, p2}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->generateSettingViews(Ljava/util/List;)V

    .line 37
    new-instance p1, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->aaSettingUpdateListener:Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;

    if-eqz p1, :cond_0

    .line 51
    invoke-static {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->registerListener(Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$changeListener(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->changeListener(I)V

    return-void
.end method

.method public static final synthetic access$getSettingViews$p(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;)Ljava/util/Map;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->settingViews:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$updateSettingViewVisibility(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->updateSettingViewVisibility(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    return-void
.end method

.method private final changeListener(I)V
    .locals 3

    .line 89
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->updateAllSettingViewsVisibility()V

    .line 91
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->isPluginSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/amazon/ksdk/presets/AaSettingType;->PLUGIN_CHANGED:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 98
    :cond_0
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->isThemeSetting(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;

    sget-object v1, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;->SETTING_CHANGED:Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;-><init>(Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    return-void
.end method

.method private final generateSettingViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    .line 68
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object v1

    .line 70
    instance-of v2, v1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;

    if-eqz v2, :cond_2

    .line 71
    check-cast v1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v2, :cond_0

    .line 72
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->settingViews:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_2
    sget-object v2, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getIdentifier()I

    move-result v4

    new-instance v5, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$generateSettingViews$settingView$1;

    invoke-direct {v5, p0, v0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$generateSettingViews$settingView$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    .line 78
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils;->createViewForAaSettingDisplay(Landroid/content/Context;ILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function1;)Landroid/view/View;

    move-result-object v1

    .line 80
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->settingViews:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->updateAllSettingViewsVisibility()V

    return-void
.end method

.method private final updateAllSettingViewsVisibility()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->settingViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    .line 105
    invoke-direct {p0, v1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->updateSettingViewVisibility(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final updateSettingViewVisibility(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 2

    .line 110
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getVisibilityHandler()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    .line 111
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->settingViews:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 112
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->settingViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->aaSettingUpdateListener:Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;

    if-eqz v0, :cond_0

    .line 61
    invoke-static {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->deregisterListener(Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;)V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->aaSettingUpdateListener:Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;

    :cond_0
    return-void
.end method
