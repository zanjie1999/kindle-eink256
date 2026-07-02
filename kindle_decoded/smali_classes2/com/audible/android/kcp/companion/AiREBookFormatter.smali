.class public final Lcom/audible/android/kcp/companion/AiREBookFormatter;
.super Ljava/lang/Object;
.source "AiREBookFormatter.java"


# static fields
.field private static INSTANCE:Lcom/audible/android/kcp/companion/AiREBookFormatter;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/companion/AiREBookFormatter;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/companion/AiREBookFormatter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/audible/android/kcp/companion/AiREBookFormatter;
    .locals 2

    const-class v0, Lcom/audible/android/kcp/companion/AiREBookFormatter;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/audible/android/kcp/companion/AiREBookFormatter;->INSTANCE:Lcom/audible/android/kcp/companion/AiREBookFormatter;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/audible/android/kcp/companion/AiREBookFormatter;

    invoke-direct {v1}, Lcom/audible/android/kcp/companion/AiREBookFormatter;-><init>()V

    sput-object v1, Lcom/audible/android/kcp/companion/AiREBookFormatter;->INSTANCE:Lcom/audible/android/kcp/companion/AiREBookFormatter;

    .line 39
    :cond_0
    sget-object v1, Lcom/audible/android/kcp/companion/AiREBookFormatter;->INSTANCE:Lcom/audible/android/kcp/companion/AiREBookFormatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
