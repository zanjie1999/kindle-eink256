.class public final Lcom/audible/hushpuppy/common/logging/LoggerManager;
.super Ljava/lang/Object;
.source "LoggerManager.java"


# static fields
.field private static final INSTANCE:Lcom/audible/hushpuppy/common/logging/LoggerManager;


# instance fields
.field private defaultLogWriter:Lcom/audible/hushpuppy/common/logging/ILogWriter;

.field private final flyweightLoggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/audible/hushpuppy/common/logging/ILogger;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredLogWriter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/hushpuppy/common/logging/ILogWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/audible/hushpuppy/common/logging/LoggerManager;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/logging/LoggerManager;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->INSTANCE:Lcom/audible/hushpuppy/common/logging/LoggerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->flyweightLoggers:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->registeredLogWriter:Ljava/util/Set;

    .line 50
    new-instance v0, Lcom/audible/hushpuppy/common/logging/LogWarningLogWriter;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/logging/LogWarningLogWriter;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->defaultLogWriter:Lcom/audible/hushpuppy/common/logging/ILogWriter;

    .line 51
    iget-object v1, p0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->registeredLogWriter:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;
    .locals 1

    .line 61
    sget-object v0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->INSTANCE:Lcom/audible/hushpuppy/common/logging/LoggerManager;

    return-object v0
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 2

    const-string v0, "clazz can\'t be null."

    .line 89
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->flyweightLoggers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/logging/ILogger;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->registeredLogWriter:Ljava/util/Set;

    invoke-direct {v0, p1, v1}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 94
    iget-object v1, p0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->flyweightLoggers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public registerLogWriter(Lcom/audible/hushpuppy/common/logging/ILogWriter;)V
    .locals 2

    const-string v0, "logWriter can\'t be null."

    .line 71
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->registeredLogWriter:Ljava/util/Set;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->defaultLogWriter:Lcom/audible/hushpuppy/common/logging/ILogWriter;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->registeredLogWriter:Ljava/util/Set;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->defaultLogWriter:Lcom/audible/hushpuppy/common/logging/ILogWriter;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->defaultLogWriter:Lcom/audible/hushpuppy/common/logging/ILogWriter;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LoggerManager;->registeredLogWriter:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
