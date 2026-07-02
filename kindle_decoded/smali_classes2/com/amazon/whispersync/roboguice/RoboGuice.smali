.class public Lcom/amazon/whispersync/roboguice/RoboGuice;
.super Ljava/lang/Object;
.source "RoboGuice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/roboguice/RoboGuice$util;
    }
.end annotation


# static fields
.field public static DEFAULT_STAGE:Lcom/amazon/whispersync/com/google/inject/Stage;

.field private static final GUICE_LOGGER_GCROOT:Ljava/util/logging/Logger;

.field protected static final INVALID_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field protected static final MODULE_SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;

.field protected static final defaultModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected static final injectors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "Lcom/amazon/whispersync/com/google/inject/Injector;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static modulesResourceId:I

.field protected static final resourceListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "Lcom/amazon/whispersync/roboguice/inject/ResourceListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final viewListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "Lcom/amazon/whispersync/roboguice/inject/ViewListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/Stage;->PRODUCTION:Lcom/amazon/whispersync/com/google/inject/Stage;

    sput-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->DEFAULT_STAGE:Lcom/amazon/whispersync/com/google/inject/Stage;

    const-string v0, "\\s+"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->MODULE_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\."

    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->INVALID_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->defaultModules:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->injectors:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->resourceListeners:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->viewListeners:Ljava/util/Map;

    const/4 v0, 0x0

    .line 52
    sput v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->modulesResourceId:I

    .line 54
    const-class v0, Lcom/amazon/whispersync/roboguice/RoboGuice;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->TAG:Ljava/lang/String;

    const-string v0, "com.amazon.whispersync.com.google.inject.internal.util.$FinalizableReferenceQueue"

    .line 55
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->GUICE_LOGGER_GCROOT:Ljava/util/logging/Logger;

    .line 62
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;Ljava/lang/String;Landroid/app/Application;Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/whispersync/roboguice/RoboGuice;->storeInCache(Ljava/util/Map;Ljava/lang/String;Landroid/app/Application;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Landroid/app/Application;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->createDefaultModules(Ljava/lang/String;Landroid/app/Application;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;Landroid/app/Application;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->createModulesFromAndroidResource(Ljava/lang/String;Landroid/app/Application;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;Landroid/app/Application;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->createModulesFromJarResource(Ljava/lang/String;Landroid/app/Application;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static createDefaultModules(Ljava/lang/String;Landroid/app/Application;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    sget-object v1, Lcom/amazon/whispersync/roboguice/RoboGuice;->defaultModules:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    sget-object v1, Lcom/amazon/whispersync/roboguice/RoboGuice;->defaultModules:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 233
    invoke-static {p0, p1, v2}, Lcom/amazon/whispersync/roboguice/RoboGuice;->createModule(Ljava/lang/String;Landroid/app/Application;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Module;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static createModule(Ljava/lang/String;Landroid/app/Application;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Module;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/Module;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v0, [Ljava/lang/Class;

    .line 307
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {p2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p1, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/com/google/inject/Module;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    :try_start_1
    new-array p0, v1, [Ljava/lang/Class;

    .line 309
    const-class v0, Landroid/content/Context;

    aput-object v0, p0, v2

    invoke-virtual {p2, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/com/google/inject/Module;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 312
    :catch_2
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/com/google/inject/Module;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    .line 315
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static createModule(Ljava/lang/String;Landroid/app/Application;Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/Module;
    .locals 0

    .line 297
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/amazon/whispersync/roboguice/RoboGuice;->createModule(Ljava/lang/String;Landroid/app/Application;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Module;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 299
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static createModulesFromAndroidResource(Ljava/lang/String;Landroid/app/Application;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;"
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->INVALID_CHARS_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v4, "%s_roboguice_modules"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "array"

    invoke-virtual {v2, v0, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 282
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-gtz v2, :cond_0

    .line 284
    sget-object p0, Lcom/amazon/whispersync/roboguice/RoboGuice;->TAG:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v0, p1, v3

    const-string v0, "Failed to locate android resource: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 289
    invoke-static {p0, p1, v2}, Lcom/amazon/whispersync/roboguice/RoboGuice;->createModule(Ljava/lang/String;Landroid/app/Application;Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/Module;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private static createModulesFromJarResource(Ljava/lang/String;Landroid/app/Application;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-static {p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getPropertiesFromClassLoader(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 247
    :cond_0
    sget-object v2, Lcom/amazon/whispersync/roboguice/RoboGuice;->MODULE_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    const-string v3, "modules"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 248
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/amazon/whispersync/roboguice/RoboGuice;->createModule(Ljava/lang/String;Landroid/app/Application;Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/Module;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static destroyInjector(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 367
    invoke-static {p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object v0

    .line 368
    const-class v1, Lcom/amazon/whispersync/roboguice/event/EventManager;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/roboguice/event/EventManager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/roboguice/event/EventManager;->destroy()V

    .line 369
    sget-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->injectors:Ljava/util/Map;

    invoke-static {v0, p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->removeFromCache(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static getBaseApplicationInjector(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 2

    .line 107
    sget-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->injectors:Ljava/util/Map;

    invoke-static {v0, p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getFromCache(Ljava/util/Map;Ljava/lang/String;Landroid/app/Application;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/Injector;

    if-eqz v0, :cond_0

    return-object v0

    .line 111
    :cond_0
    const-class v0, Lcom/amazon/whispersync/roboguice/RoboGuice;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/amazon/whispersync/roboguice/RoboGuice;->injectors:Ljava/util/Map;

    invoke-static {v1, p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getFromCache(Ljava/util/Map;Ljava/lang/String;Landroid/app/Application;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/Injector;

    if-eqz v1, :cond_1

    .line 114
    monitor-exit v0

    return-object v1

    .line 116
    :cond_1
    sget-object v1, Lcom/amazon/whispersync/roboguice/RoboGuice;->DEFAULT_STAGE:Lcom/amazon/whispersync/com/google/inject/Stage;

    invoke-static {p0, p1, v1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->setBaseApplicationInjector(Ljava/lang/String;Landroid/app/Application;Lcom/amazon/whispersync/com/google/inject/Stage;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 117
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getFromCache(Ljava/util/Map;Ljava/lang/String;Landroid/app/Application;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "TT;>;>;",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            ")TT;"
        }
    .end annotation

    .line 69
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;
    .locals 3

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 321
    new-instance v1, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-static {p0, v0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getBaseApplicationInjector(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getViewListener(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/roboguice/inject/ViewListener;

    move-result-object p0

    invoke-direct {v1, p1, v2, p0}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;-><init>(Landroid/content/Context;Lcom/amazon/whispersync/com/google/inject/Injector;Lcom/amazon/whispersync/roboguice/inject/ViewListener;)V

    return-object v1
.end method

.method private static getPropertiesFromClassLoader(Ljava/lang/String;)Ljava/util/Properties;
    .locals 6

    const/4 v0, 0x0

    .line 257
    :try_start_0
    const-class v1, Lcom/amazon/whispersync/roboguice/RoboGuice;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "res/%s_roboguice.properties"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 259
    :try_start_1
    sget-object v2, Lcom/amazon/whispersync/roboguice/RoboGuice;->TAG:Ljava/lang/String;

    const-string v4, "Failed to locate jar resource for namespace %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 271
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-object v0

    .line 263
    :cond_1
    :try_start_3
    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 264
    invoke-virtual {p0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 271
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 274
    :catch_2
    :cond_3
    throw p0

    :catch_3
    move-object v1, v0

    :catch_4
    if-eqz v1, :cond_4

    .line 271
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_4
    return-object v0
.end method

.method protected static getResourceListener(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/roboguice/inject/ResourceListener;
    .locals 3

    .line 339
    sget-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->resourceListeners:Ljava/util/Map;

    invoke-static {v0, p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getFromCache(Ljava/util/Map;Ljava/lang/String;Landroid/app/Application;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener;

    if-nez v0, :cond_1

    .line 341
    const-class v1, Lcom/amazon/whispersync/roboguice/RoboGuice;

    monitor-enter v1

    .line 342
    :try_start_0
    sget-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->resourceListeners:Ljava/util/Map;

    invoke-static {v0, p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getFromCache(Ljava/util/Map;Ljava/lang/String;Landroid/app/Application;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/roboguice/inject/ResourceListener;-><init>(Landroid/app/Application;)V

    .line 345
    sget-object v2, Lcom/amazon/whispersync/roboguice/RoboGuice;->resourceListeners:Ljava/util/Map;

    invoke-static {v2, p0, p1, v0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->storeInCache(Ljava/util/Map;Ljava/lang/String;Landroid/app/Application;Ljava/lang/Object;)V

    .line 347
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected static getViewListener(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/roboguice/inject/ViewListener;
    .locals 3

    .line 353
    sget-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->viewListeners:Ljava/util/Map;

    invoke-static {v0, p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getFromCache(Ljava/util/Map;Ljava/lang/String;Landroid/app/Application;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener;

    if-nez v0, :cond_1

    .line 355
    const-class v1, Lcom/amazon/whispersync/roboguice/RoboGuice;

    monitor-enter v1

    .line 356
    :try_start_0
    sget-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->viewListeners:Ljava/util/Map;

    invoke-static {v0, p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getFromCache(Ljava/util/Map;Ljava/lang/String;Landroid/app/Application;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener;

    invoke-direct {v0}, Lcom/amazon/whispersync/roboguice/inject/ViewListener;-><init>()V

    .line 359
    sget-object v2, Lcom/amazon/whispersync/roboguice/RoboGuice;->viewListeners:Ljava/util/Map;

    invoke-static {v2, p0, p1, v0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->storeInCache(Ljava/util/Map;Ljava/lang/String;Landroid/app/Application;Ljava/lang/Object;)V

    .line 361
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static injectMembers(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "TT;)TT;"
        }
    .end annotation

    .line 328
    invoke-static {p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/amazon/whispersync/com/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    return-object p2
.end method

.method public static newDefaultRoboModule(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;
    .locals 7

    .line 334
    new-instance v6, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;

    new-instance v3, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    invoke-direct {v3, p1}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;-><init>(Landroid/app/Application;)V

    invoke-static {p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getViewListener(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/roboguice/inject/ViewListener;

    move-result-object v4

    invoke-static {p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getResourceListener(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/roboguice/inject/ResourceListener;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;-><init>(Ljava/lang/String;Landroid/app/Application;Lcom/amazon/whispersync/roboguice/inject/ContextScope;Lcom/amazon/whispersync/roboguice/inject/ViewListener;Lcom/amazon/whispersync/roboguice/inject/ResourceListener;)V

    return-object v6
.end method

.method private static removeFromCache(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "TT;>;>;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 90
    const-class v0, Lcom/amazon/whispersync/roboguice/RoboGuice;

    monitor-enter v0

    .line 91
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 93
    monitor-exit v0

    return-void

    .line 96
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 98
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setBaseApplicationInjector(Ljava/lang/String;Landroid/app/Application;Lcom/amazon/whispersync/com/google/inject/Stage;)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 1

    .line 201
    new-instance v0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whispersync/roboguice/RoboGuice$2;-><init>(Ljava/lang/String;Landroid/app/Application;Lcom/amazon/whispersync/com/google/inject/Stage;)V

    invoke-static {v0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->suppressThreadDiskReadsStrictModeViolation(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/com/google/inject/Injector;

    return-object p0
.end method

.method public static varargs setBaseApplicationInjector(Ljava/lang/String;Landroid/app/Application;Lcom/amazon/whispersync/com/google/inject/Stage;[Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 1

    .line 138
    new-instance v0, Lcom/amazon/whispersync/roboguice/RoboGuice$1;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/amazon/whispersync/roboguice/RoboGuice$1;-><init>([Lcom/amazon/whispersync/com/google/inject/Module;Ljava/lang/String;Landroid/app/Application;Lcom/amazon/whispersync/com/google/inject/Stage;)V

    invoke-static {v0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->suppressThreadDiskReadsStrictModeViolation(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/com/google/inject/Injector;

    return-object p0
.end method

.method public static varargs setDefaultModules(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;)V"
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->defaultModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static storeInCache(Ljava/util/Map;Ljava/lang/String;Landroid/app/Application;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "TT;>;>;",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            "TT;)V"
        }
    .end annotation

    .line 78
    const-class v0, Lcom/amazon/whispersync/roboguice/RoboGuice;

    monitor-enter v0

    .line 79
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 82
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-virtual {v1, p2, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static suppressThreadDiskReadsStrictModeViolation(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 172
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 174
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 176
    :try_start_1
    instance-of v1, p0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 177
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method
