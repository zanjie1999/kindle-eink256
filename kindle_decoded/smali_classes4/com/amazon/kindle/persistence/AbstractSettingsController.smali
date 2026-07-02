.class public abstract Lcom/amazon/kindle/persistence/AbstractSettingsController;
.super Ljava/lang/Object;
.source "AbstractSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;,
        Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;
    }
.end annotation


# static fields
.field private static final BOOLEAN_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final CS_REFLOWABLE:Ljava/lang/String; = "CONTINUOUS_SCROLL_REFLOWABLE"

.field private static final FLOAT_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final INT_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.persistence.AbstractSettingsController"


# instance fields
.field private final backupManager:Landroid/app/backup/BackupManager;

.field protected final context:Landroid/content/Context;

.field private final fullName:Ljava/lang/String;

.field private final inMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final mode:I

.field private prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/amazon/kindle/persistence/AbstractSettingsController$1;

    invoke-direct {v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->BOOLEAN_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;

    .line 44
    new-instance v0, Lcom/amazon/kindle/persistence/AbstractSettingsController$2;

    invoke-direct {v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->INT_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;

    .line 51
    new-instance v0, Lcom/amazon/kindle/persistence/AbstractSettingsController$3;

    invoke-direct {v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController$3;-><init>()V

    sput-object v0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->LONG_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;

    .line 58
    new-instance v0, Lcom/amazon/kindle/persistence/AbstractSettingsController$4;

    invoke-direct {v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController$4;-><init>()V

    sput-object v0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->FLOAT_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;

    .line 65
    new-instance v0, Lcom/amazon/kindle/persistence/AbstractSettingsController$5;

    invoke-direct {v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController$5;-><init>()V

    sput-object v0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->STRING_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->listeners:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->inMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    iput-object p3, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    .line 144
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object p3

    const-string v0, "SettingController_worker"

    .line 145
    invoke-interface {p3, v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    const/4 v0, 0x1

    .line 146
    invoke-interface {p3, v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withPriority(I)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 147
    invoke-interface {p3}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->worker:Ljava/util/concurrent/ExecutorService;

    .line 148
    iput-object p1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->fullName:Ljava/lang/String;

    .line 149
    iput p2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->mode:I

    .line 150
    new-instance p1, Landroid/app/backup/BackupManager;

    iget-object p2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->backupManager:Landroid/app/backup/BackupManager;

    .line 151
    invoke-virtual {p0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->readFromDisk()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/persistence/AbstractSettingsController;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    return-object p0
.end method

.method private getValue(Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->inMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-interface {p1, v0, p2, p3}, Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;->getValue(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 324
    invoke-static {p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;->of(Ljava/lang/Object;)Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;

    move-result-object v0

    .line 325
    iget-object p1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->inMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;

    if-eqz p1, :cond_0

    move-object v0, p1

    .line 330
    :cond_0
    iget-boolean p1, v0, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;->isEmpty:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, v0, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;->object:Ljava/lang/Object;

    :goto_0
    return-object p3
.end method

.method private putValue(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Runnable;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->inMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;->of(Ljava/lang/Object;)Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object p2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->backupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p2}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 337
    iget-object p2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-eqz p3, :cond_0

    .line 339
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->notifyListeners(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getAllKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->inMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 366
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 367
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-virtual {v0}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method protected getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 195
    sget-object v0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->BOOLEAN_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getValue(Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 281
    sget-object v0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->FLOAT_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getValue(Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method protected final getFullName()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method protected getInt(Ljava/lang/String;I)I
    .locals 1

    .line 223
    sget-object v0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->INT_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getValue(Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected getLong(Ljava/lang/String;J)J
    .locals 1

    .line 257
    sget-object v0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->LONG_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getValue(Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method protected getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 304
    sget-object v0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->STRING_ADAPTER:Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getValue(Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected notifyListeners(Ljava/lang/String;)V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    const/4 v2, 0x0

    .line 422
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v1, :cond_1

    .line 428
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    const-class v2, Lcom/amazon/kindle/persistence/AbstractSettingsController;

    .line 429
    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 431
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 433
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/persistence/SettingsChangedEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/persistence/SettingsChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method protected prefsContain(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected putBoolean(Ljava/lang/String;Z)V
    .locals 2

    .line 204
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/persistence/AbstractSettingsController$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController$6;-><init>(Lcom/amazon/kindle/persistence/AbstractSettingsController;Ljava/lang/String;Z)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putValue(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Runnable;)V

    return-void
.end method

.method protected putFloat(Ljava/lang/String;F)V
    .locals 2

    .line 290
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/persistence/AbstractSettingsController$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController$9;-><init>(Lcom/amazon/kindle/persistence/AbstractSettingsController;Ljava/lang/String;F)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putValue(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Runnable;)V

    return-void
.end method

.method protected putInt(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 232
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;IZ)V

    return-void
.end method

.method protected putInt(Ljava/lang/String;IZ)V
    .locals 2

    .line 242
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/persistence/AbstractSettingsController$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController$7;-><init>(Lcom/amazon/kindle/persistence/AbstractSettingsController;Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putValue(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Runnable;)V

    return-void
.end method

.method protected putLong(Ljava/lang/String;J)V
    .locals 2

    .line 266
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/persistence/AbstractSettingsController$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/kindle/persistence/AbstractSettingsController$8;-><init>(Lcom/amazon/kindle/persistence/AbstractSettingsController;Ljava/lang/String;J)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putValue(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Runnable;)V

    return-void
.end method

.method protected putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 313
    new-instance v0, Lcom/amazon/kindle/persistence/AbstractSettingsController$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController$10;-><init>(Lcom/amazon/kindle/persistence/AbstractSettingsController;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putValue(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Runnable;)V

    return-void
.end method

.method protected readFromDisk()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->inMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 176
    new-instance v0, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->fullName:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->mode:I

    iget-object v3, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    return-void
.end method

.method public registerSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected removeAll(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 347
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 348
    iget-object v2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->inMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;->emptyOne()Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->notifyListeners(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/persistence/AbstractSettingsController$11;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController$11;-><init>(Lcom/amazon/kindle/persistence/AbstractSettingsController;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public unregisterSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
