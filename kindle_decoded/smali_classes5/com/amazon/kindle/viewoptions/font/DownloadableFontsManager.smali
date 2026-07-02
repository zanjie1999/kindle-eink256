.class public final Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;
.super Ljava/lang/Object;
.source "DownloadableFontsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadableFontsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadableFontsManager.kt\ncom/amazon/kindle/viewoptions/font/DownloadableFontsManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,119:1\n1517#2:120\n1588#2,3:121\n*E\n*S KotlinDebug\n*F\n+ 1 DownloadableFontsManager.kt\ncom/amazon/kindle/viewoptions/font/DownloadableFontsManager\n*L\n36#1:120\n36#1,3:121\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$Companion;

.field private static fontInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/ksdk/presets/FontInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downloadableFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->Companion:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$Companion;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->fontInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getFontInfoMap$cp()Ljava/util/HashMap;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->fontInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getListView$p(Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;)Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    return-object p0
.end method

.method public static final getFontInfoFromDownloadableFonts(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/amazon/ksdk/presets/FontInfo;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->Companion:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$Companion;->getFontInfoFromDownloadableFonts(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/amazon/ksdk/presets/FontInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getSelectedIndex(Lcom/mobipocket/android/drawing/FontFamily;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 58
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->downloadableFonts:Ljava/util/List;

    const/4 v3, 0x0

    const-string v4, "downloadableFonts"

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 59
    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->downloadableFonts:Ljava/util/List;

    if-eqz v6, :cond_2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v6}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    return v0

    .line 58
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final getView(Landroid/content/Context;)Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    if-nez v0, :cond_4

    .line 32
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 34
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->allDownloadableFonts()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 122
    check-cast v3, Lcom/amazon/ksdk/presets/FontInfo;

    const-string v4, "it"

    .line 37
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazon/ksdk/presets/FontInfo;->getFontFamily()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mobipocket/android/drawing/FontFamily;->fromTypeFaceName(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_1
    iput-object v2, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->downloadableFonts:Ljava/util/List;

    .line 41
    :cond_2
    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    const/4 v6, 0x0

    new-instance v7, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewDivider;

    invoke-direct {v7}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewDivider;-><init>()V

    .line 42
    sget-object v8, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;->DOWNLOADABLE_FONTS_VIEW_HOLDER:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    iget-object v9, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->downloadableFonts:Ljava/util/List;

    if-eqz v9, :cond_3

    .line 43
    sget v10, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_downloadable_font_recyclerview:I

    move-object v4, v0

    move-object v5, p1

    .line 41
    invoke-direct/range {v4 .. v10}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;-><init>(Landroid/content/Context;ZLandroidx/recyclerview/widget/RecyclerView$ItemDecoration;Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    goto :goto_2

    :cond_3
    const-string p1, "downloadableFonts"

    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->listView:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    return-object p1
.end method

.method public final onResourceSetDownload(Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$onResourceSetDownload$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$onResourceSetDownload$1;-><init>(Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
