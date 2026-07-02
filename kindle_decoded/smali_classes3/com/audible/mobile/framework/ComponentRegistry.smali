.class public final Lcom/audible/mobile/framework/ComponentRegistry;
.super Ljava/lang/Object;
.source "ComponentRegistry.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final THE_ONE_TRUE_REGISTRY:Lcom/audible/mobile/framework/ComponentRegistry;


# instance fields
.field private final componentRegistry:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/framework/ComponentRegistry;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/framework/ComponentRegistry;->LOGGER:Lorg/slf4j/Logger;

    .line 29
    new-instance v0, Lcom/audible/mobile/framework/ComponentRegistry;

    invoke-direct {v0}, Lcom/audible/mobile/framework/ComponentRegistry;-><init>()V

    sput-object v0, Lcom/audible/mobile/framework/ComponentRegistry;->THE_ONE_TRUE_REGISTRY:Lcom/audible/mobile/framework/ComponentRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/framework/ComponentRegistry;->componentRegistry:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private static configureViaMetaData(Landroid/content/Context;)Lcom/audible/mobile/framework/Configuration;
    .locals 1

    const-string v0, "aap_configuration_class_name"

    .line 86
    invoke-static {p0, v0}, Lcom/audible/mobile/util/ContextUtils;->getMetadataValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/audible/mobile/util/ClassUtils;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/framework/Configuration;

    return-object p0

    .line 91
    :cond_0
    sget-object p0, Lcom/audible/mobile/framework/ComponentRegistry;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Unable to query meta data for Configuration class name"

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static configureViaPackageName(Landroid/content/Context;)Lcom/audible/mobile/framework/Configuration;
    .locals 1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "AapConfiguration"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-static {p0}, Lcom/audible/mobile/util/ClassUtils;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/framework/Configuration;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;
    .locals 3

    const-class v0, Lcom/audible/mobile/framework/ComponentRegistry;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/audible/mobile/framework/ComponentRegistry;->THE_ONE_TRUE_REGISTRY:Lcom/audible/mobile/framework/ComponentRegistry;

    .line 47
    invoke-direct {v1}, Lcom/audible/mobile/framework/ComponentRegistry;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-static {p0}, Lcom/audible/mobile/framework/ComponentRegistry;->configureViaPackageName(Landroid/content/Context;)Lcom/audible/mobile/framework/Configuration;

    move-result-object v2

    if-nez v2, :cond_0

    .line 52
    invoke-static {p0}, Lcom/audible/mobile/framework/ComponentRegistry;->configureViaMetaData(Landroid/content/Context;)Lcom/audible/mobile/framework/Configuration;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v2, p0, v1}, Lcom/audible/mobile/framework/Configuration;->configure(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isEmpty()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/audible/mobile/framework/ComponentRegistry;->componentRegistry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "clazz cannot be null."

    .line 105
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/audible/mobile/framework/ComponentRegistry;->componentRegistry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configuration error! No component was found for the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasComponent(Ljava/lang/Class;)Z
    .locals 1

    const-string v0, "clazz cannot be null."

    .line 121
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/audible/mobile/framework/ComponentRegistry;->componentRegistry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)Z"
        }
    .end annotation

    const-string v0, "must provide a  clazz key."

    .line 137
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "cannot insert a null component"

    .line 138
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/audible/mobile/framework/ComponentRegistry;->componentRegistry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
