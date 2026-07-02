.class public final Lcom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1;
.super Lcom/amazon/ksdk/presets/ReadingPresetsObserver;
.source "AaSettingObserverManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaSettingObserverManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaSettingObserverManager.kt\ncom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1819#2,2:101\n1819#2,2:103\n1819#2,2:105\n*E\n*S KotlinDebug\n*F\n+ 1 AaSettingObserverManager.kt\ncom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1\n*L\n70#1,2:101\n81#1,2:103\n92#1,2:105\n*E\n"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/amazon/ksdk/presets/ReadingPresetsObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAaSettingsChanged(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/AaSettingType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "aaSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;)Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    const-string v1, "ThreadPoolManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->getObservers()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    .line 92
    invoke-virtual {v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsObserver;->onAaSettingsChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1$onAaSettingsChanged$2;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1$onAaSettingsChanged$2;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onPresetInfoChanged(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "presetInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;)Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    const-string v1, "ThreadPoolManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->getObservers()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    .line 81
    invoke-virtual {v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsObserver;->onPresetInfoChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1$onPresetInfoChanged$2;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1$onPresetInfoChanged$2;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onPresetsListChanged()V
    .locals 2

    .line 68
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;)Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    const-string v1, "ThreadPoolManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->getObservers()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    .line 70
    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsObserver;->onPresetsListChanged()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1$onPresetsListChanged$2;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1$onPresetsListChanged$2;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
