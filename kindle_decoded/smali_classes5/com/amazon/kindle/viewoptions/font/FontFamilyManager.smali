.class public final Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;
.super Ljava/lang/Object;
.source "FontFamilyManager.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(FontFamilyManager::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->TAG:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getListView$p(Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;)Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    return-object p0
.end method

.method public static final synthetic access$getSelectedIndex(Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;Ljava/util/List;)I
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->getSelectedIndex(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method private final getSelectedIndex(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;",
            ">;)I"
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->fontId()J

    move-result-wide v0

    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;

    .line 60
    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;->getFontFamilyId()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public final getView(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    if-nez v0, :cond_3

    .line 36
    sget-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->getFontFamilyInfos()Ljava/util/List;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView supportedFonts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v8, 0x1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_3

    .line 40
    new-instance v9, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 41
    sget-object v5, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;->FONT_FAMILY_VIEW_HOLDER:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    .line 42
    sget v7, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_font_face_recyclerview:I

    move-object v1, v9

    move-object v2, p1

    move-object v6, v0

    .line 40
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;-><init>(Landroid/content/Context;ZLandroidx/recyclerview/widget/RecyclerView$ItemDecoration;Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;Ljava/util/List;I)V

    iput-object v9, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_font_family_item_horizontal_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_font_family_item_vertical_spacing:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 45
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/amazon/kindle/viewoptions/ui/listview/SpaceItemDecoration;

    invoke-direct {v3, v1, p1}, Lcom/amazon/kindle/viewoptions/ui/listview/SpaceItemDecoration;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->setItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 46
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->getSelectedIndex(Ljava/util/List;)I

    move-result p1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->setSelectedPosition(I)V

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->scrollToPosition(I)V

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v8}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->setHasFixedSize(Z)V

    .line 54
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    return-object p1
.end method

.method public final onAvailableFontsChange(Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->getEventType()Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DOWNLOAD_SUCCESS:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->getEventType()Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DELETE_SUCCESS:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    if-ne p1, v0, :cond_1

    .line 75
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager$onAvailableFontsChange$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager$onAvailableFontsChange$1;-><init>(Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final onThemeChangeEvent(Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;->getType()Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;->THEME_CHANGED:Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 91
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager$onThemeChangeEvent$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager$onThemeChangeEvent$1;-><init>(Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
