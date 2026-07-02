.class public Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;
.super Ljava/lang/Object;
.source "KindleIllustratedJITProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Ljava/util/Collection<",
        "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
        ">;",
        "Lcom/amazon/kindle/krx/tutorial/events/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final JIT_PRIORITY:I = 0x1

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "KindleIllustratedSettings"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private isLastBookWithKITurnedOff(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "KindleIllustratedSettings"

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "LAST_KI_DISABLED_BOOKID"

    const/4 v1, 0x0

    .line 144
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private declared-synchronized jitHasBeenShown(Landroid/content/Context;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "KindleIllustratedSettings"

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "KI_JIT_SHOWN_KEY"

    .line 107
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 108
    sget-object v0, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JIT has been shown previously: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateJITShown(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "KindleIllustratedSettings"

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 114
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "KI_JIT_SHOWN_KEY"

    const/4 v1, 0x1

    .line 115
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lcom/amazon/kindle/krx/tutorial/events/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;->get(Lcom/amazon/kindle/krx/tutorial/events/EventType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/tutorial/events/EventType;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/tutorial/events/EventType;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;->TAG:Ljava/lang/String;

    const-string v1, "KI JIT Provider invoked"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 59
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isKindleIllustratedSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-object p1, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;->TAG:Ljava/lang/String;

    const-string v0, "Not showing Kindle Illustrated JIT as ki is enabled"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 71
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;->CHROME_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    if-ne p1, v0, :cond_3

    .line 72
    sget-object p1, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;->TAG:Ljava/lang/String;

    const-string v0, "Checking if Kindle Illustrated chrome JIT was previously shown"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;->jitHasBeenShown(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 75
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 76
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;->isLastBookWithKITurnedOff(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 77
    sget-object p1, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;->TAG:Ljava/lang/String;

    const-string v0, "Showing Kindle Illustrated chrome JIT"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;->updateJITShown(Landroid/content/Context;)V

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    new-instance v0, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITTutorial;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITTutorial;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 91
    :cond_2
    sget-object p1, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;->TAG:Ljava/lang/String;

    const-string v0, "Skipping JIT as its the last book again on which KI was turned off"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v2

    .line 60
    :cond_4
    :goto_0
    sget-object p1, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;->TAG:Ljava/lang/String;

    const-string v0, "Not showing Kindle Illustrated JIT as content is not supported"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getPriority(Lcom/amazon/kindle/krx/tutorial/events/EventType;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcom/amazon/kindle/krx/tutorial/events/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;->getPriority(Lcom/amazon/kindle/krx/tutorial/events/EventType;)I

    move-result p1

    return p1
.end method

.method public onSettingsChangedEvent(Lcom/amazon/kindle/persistence/SettingsChangedEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/amazon/kindle/persistence/SettingsChangedEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 125
    :goto_0
    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_ILLUSTRATED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 126
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 128
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v2, "KindleIllustratedSettings"

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 129
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 130
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LAST_KI_DISABLED_BOOKID"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method
