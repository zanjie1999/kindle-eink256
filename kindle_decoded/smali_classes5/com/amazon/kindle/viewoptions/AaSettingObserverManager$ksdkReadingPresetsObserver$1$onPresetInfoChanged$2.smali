.class final Lcom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1$onPresetInfoChanged$2;
.super Ljava/lang/Object;
.source "AaSettingObserverManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1;->onPresetInfoChanged(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaSettingObserverManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaSettingObserverManager.kt\ncom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1$onPresetInfoChanged$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1819#2,2:101\n*E\n*S KotlinDebug\n*F\n+ 1 AaSettingObserverManager.kt\ncom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1$onPresetInfoChanged$2\n*L\n84#1,2:101\n*E\n"
.end annotation


# instance fields
.field final synthetic $presetInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1$onPresetInfoChanged$2;->$presetInfos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 84
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->getObservers()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    .line 84
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1$onPresetInfoChanged$2;->$presetInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/amazon/ksdk/presets/ReadingPresetsObserver;->onPresetInfoChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-void
.end method
