.class public final Lcom/amazon/kindle/tutorial/InBookTutorialHelper;
.super Ljava/lang/Object;
.source "InBookTutorialHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/tutorial/InBookTutorialHelper;

.field private static final areTutorialProvidersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final darkModeTutorialProvider:Lcom/amazon/kindle/tutorial/DarkModeTutorialProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;-><init>()V

    sput-object v0, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->INSTANCE:Lcom/amazon/kindle/tutorial/InBookTutorialHelper;

    .line 15
    new-instance v0, Lcom/amazon/kindle/tutorial/DarkModeTutorialProvider;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/DarkModeTutorialProvider;-><init>()V

    sput-object v0, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->darkModeTutorialProvider:Lcom/amazon/kindle/tutorial/DarkModeTutorialProvider;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->areTutorialProvidersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDarkModeTutorialProvider$p(Lcom/amazon/kindle/tutorial/InBookTutorialHelper;)Lcom/amazon/kindle/tutorial/DarkModeTutorialProvider;
    .locals 0

    .line 12
    sget-object p0, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->darkModeTutorialProvider:Lcom/amazon/kindle/tutorial/DarkModeTutorialProvider;

    return-object p0
.end method

.method public static final synthetic access$registerTutorialProvidersIfNecessary(Lcom/amazon/kindle/tutorial/InBookTutorialHelper;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->registerTutorialProvidersIfNecessary()V

    return-void
.end method

.method private final registerTutorialProvidersIfNecessary()V
    .locals 2

    .line 23
    sget-object v0, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->areTutorialProvidersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->darkModeTutorialProvider:Lcom/amazon/kindle/tutorial/DarkModeTutorialProvider;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    :cond_0
    return-void
.end method

.method public static final showDarkModeTutorialIfNecessary()V
    .locals 3

    .line 33
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/tutorial/InBookTutorialHelper$showDarkModeTutorialIfNecessary$1;->INSTANCE:Lcom/amazon/kindle/tutorial/InBookTutorialHelper$showDarkModeTutorialIfNecessary$1;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    return-void
.end method
