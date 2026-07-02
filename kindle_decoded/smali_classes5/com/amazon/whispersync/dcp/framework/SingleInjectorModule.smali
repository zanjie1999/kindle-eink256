.class public Lcom/amazon/whispersync/dcp/framework/SingleInjectorModule;
.super Lcom/amazon/whispersync/com/google/inject/AbstractModule;
.source "SingleInjectorModule.java"


# static fields
.field private static final ALLOWED_CONFIGURE_COUNT:I = 0x2

.field private static final CONFIGURE_COUNTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNamespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SingleInjectorModule;->CONFIGURE_COUNTS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SingleInjectorModule;->mNamespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected declared-synchronized configure()V
    .locals 5

    monitor-enter p0

    .line 38
    :try_start_0
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/SingleInjectorModule;->CONFIGURE_COUNTS:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/SingleInjectorModule;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 42
    sget-object v2, Lcom/amazon/whispersync/dcp/framework/SingleInjectorModule;->CONFIGURE_COUNTS:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/SingleInjectorModule;->mNamespace:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    .line 50
    monitor-exit p0

    return-void

    .line 47
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Attempted to auto-create more than one base injector in namespace: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/SingleInjectorModule;->mNamespace:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
