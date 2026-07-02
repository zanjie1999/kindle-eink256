.class public final Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;
.super Ljava/lang/Object;
.source "ReadingProgressModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 313
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isFalkorEpisode(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 0

    .line 313
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->isFalkorEpisode(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isSample(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 0

    .line 313
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->isSample(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p0

    return p0
.end method

.method private final getReadingProgressOptions()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;",
            ">;"
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->readingProgressModeOptions()Ljava/util/HashMap;

    move-result-object v1

    .line 375
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v2

    .line 376
    invoke-virtual {v2}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ksdk/presets/ReadingPreset;->readingProgressMultipleMode()I

    move-result v2

    .line 377
    invoke-static {}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->values()[Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    .line 378
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazon/ksdk/presets/ReadingProgressModeType;->valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    move-result-object v8

    .line 379
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_3

    .line 380
    :cond_0
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_1
    const-string/jumbo v9, "readingProgressOptionMap\u2026ingProgressType] ?: false"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 381
    invoke-virtual {v7}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->getValue()I

    move-result v9

    and-int/2addr v9, v2

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 382
    :goto_2
    new-instance v10, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    invoke-direct {v10, v7}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;-><init>(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;)V

    .line 383
    invoke-virtual {v10, v8}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->setAvailable(Z)V

    .line 384
    invoke-virtual {v10, v9}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->setSelected(Z)V

    .line 385
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 387
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$getTAG$cp()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReadingProgressOptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method private final isFalkorEpisode(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 1

    .line 396
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    const-string v0, "docViewer.bookInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result p1

    return p1
.end method

.method private final isSample(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 1

    .line 392
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    const-string v0, "docViewer.bookInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result p1

    return p1
.end method

.method private final isUserNewToKindle()Z
    .locals 5

    .line 400
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    const-string v1, "Utils.getFactory().appSettingsController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getPreviousVersion()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final getAvailableReadingProgressOptions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;",
            ">;"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getReadingProgressOptionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    .line 362
    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getType()Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/ksdk/presets/ReadingProgressModeType;->valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    move-result-object v2

    .line 364
    invoke-static {v2}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->ksdkReadingProgressModeTypeToReaderFooterContentType(Lcom/amazon/ksdk/presets/ReadingProgressModeType;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object v2

    .line 365
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getReadingProgressOptionList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;",
            ">;"
        }
    .end annotation

    .line 317
    invoke-static {}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$getReadingProgressOptionList$cp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedReadingProgressOptions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;",
            ">;"
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getReadingProgressOptionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    .line 349
    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getType()Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/ksdk/presets/ReadingProgressModeType;->valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    move-result-object v2

    .line 351
    invoke-static {v2}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->ksdkReadingProgressModeTypeToReaderFooterContentType(Lcom/amazon/ksdk/presets/ReadingProgressModeType;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object v2

    .line 352
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final initializeReadingProgressDefaults()V
    .locals 7

    .line 322
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string/jumbo v1, "settingsController"

    .line 323
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isAaMenuReadingProgressInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 325
    invoke-static {}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->values()[Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 326
    sget-object v6, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->NONE:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    if-ne v5, v6, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->isUserNewToKindle()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 329
    :cond_0
    invoke-virtual {v5}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->getValue()I

    move-result v5

    or-int/2addr v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$getTAG$cp()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectedStates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/amazon/ksdk/presets/ReadingPreset;->setReadingProgressMultipleMode(I)Z

    .line 334
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->setAaMenuReadingProgressInitialized()V

    .line 336
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->reloadReadingProgressOptionList()V

    return-void
.end method

.method public final reloadReadingProgressOptionList()V
    .locals 2

    .line 341
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getReadingProgressOptionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 342
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getReadingProgressOptionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getReadingProgressOptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
