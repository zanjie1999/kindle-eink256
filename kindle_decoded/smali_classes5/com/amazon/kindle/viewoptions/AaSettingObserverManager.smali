.class public final Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;
.super Ljava/lang/Object;
.source "AaSettingObserverManager.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;

.field private static final TAG:Ljava/lang/String;

.field private static final ksdkReadingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

.field private static final observers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingPresetsObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;

    .line 17
    const-class v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(AaSettingObserverManager::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager$ksdkReadingPresetsObserver$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->ksdkReadingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;)Ljava/lang/String;
    .locals 0

    .line 16
    sget-object p0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final addObserver(Lcom/amazon/ksdk/presets/ReadingPresetsObserver;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final deregisterKSDKReadingPresetsObserver(Lcom/amazon/ksdk/presets/ReadingPresetsManager;)V
    .locals 1

    const-string/jumbo v0, "presetManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->ksdkReadingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    invoke-virtual {p0, v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->removeObserver(Lcom/amazon/ksdk/presets/ReadingPresetsObserver;)V

    return-void
.end method

.method public static synthetic deregisterKSDKReadingPresetsObserver$default(Lcom/amazon/ksdk/presets/ReadingPresetsManager;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 60
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->deregisterKSDKReadingPresetsObserver(Lcom/amazon/ksdk/presets/ReadingPresetsManager;)V

    return-void
.end method

.method public static final registerKSDKReadingPresetsObserver(Lcom/amazon/ksdk/presets/ReadingPresetsManager;)V
    .locals 1

    const-string/jumbo v0, "presetManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->ksdkReadingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    invoke-virtual {p0, v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->addObserver(Lcom/amazon/ksdk/presets/ReadingPresetsObserver;)V

    return-void
.end method

.method public static synthetic registerKSDKReadingPresetsObserver$default(Lcom/amazon/ksdk/presets/ReadingPresetsManager;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 51
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->registerKSDKReadingPresetsObserver(Lcom/amazon/ksdk/presets/ReadingPresetsManager;)V

    return-void
.end method

.method public static final removeObserver(Lcom/amazon/ksdk/presets/ReadingPresetsObserver;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getObservers()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingPresetsObserver;",
            ">;"
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final removeAllObservers()V
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method
