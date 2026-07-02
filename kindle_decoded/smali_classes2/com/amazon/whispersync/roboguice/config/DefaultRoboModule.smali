.class public Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;
.super Lcom/amazon/whispersync/com/google/inject/AbstractModule;
.source "DefaultRoboModule.java"


# static fields
.field protected static final accountManagerClass:Ljava/lang/Class;

.field protected static final fragmentManagerClass:Ljava/lang/Class;


# instance fields
.field protected application:Landroid/app/Application;

.field protected contextScope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

.field protected final namespace:Ljava/lang/String;

.field protected resourceListener:Lcom/amazon/whispersync/roboguice/inject/ResourceListener;

.field protected viewListener:Lcom/amazon/whispersync/roboguice/inject/ViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.amazon.whispersync.android.support.v4.app.FragmentManager"

    .line 66
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    .line 68
    :goto_0
    sput-object v1, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->fragmentManagerClass:Ljava/lang/Class;

    :try_start_1
    const-string v1, "android.accounts.AccountManager"

    .line 74
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :catchall_1
    sput-object v0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->accountManagerClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Application;Lcom/amazon/whispersync/roboguice/inject/ContextScope;Lcom/amazon/whispersync/roboguice/inject/ViewListener;Lcom/amazon/whispersync/roboguice/inject/ResourceListener;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->namespace:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    .line 92
    iput-object p3, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->contextScope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    .line 93
    iput-object p4, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->viewListener:Lcom/amazon/whispersync/roboguice/inject/ViewListener;

    .line 94
    iput-object p5, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->resourceListener:Lcom/amazon/whispersync/roboguice/inject/ResourceListener;

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 9

    .line 103
    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->namespace:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/com/google/inject/Provider;)V

    .line 105
    new-instance v2, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->contextScope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    invoke-direct {v2, v0, v3, v4}, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;-><init>(Lcom/amazon/whispersync/com/google/inject/Provider;Landroid/app/Application;Lcom/amazon/whispersync/roboguice/inject/ContextScope;)V

    .line 106
    new-instance v3, Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    invoke-direct {v3}, Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator;-><init>()V

    .line 107
    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    :try_start_0
    iget-object v6, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 112
    const-class v7, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v7}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toInstance(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-static {v4}, Lcom/amazon/whispersync/roboguice/util/Strings;->notEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bindConstant()Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedConstantBindingBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/amazon/whispersync/com/google/inject/name/Names;->named(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/name/Named;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedConstantBindingBuilder;->annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/binder/ConstantBindingBuilder;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/amazon/whispersync/com/google/inject/binder/ConstantBindingBuilder;->to(Ljava/lang/String;)V

    .line 123
    :cond_0
    const-class v4, Lcom/amazon/whispersync/roboguice/inject/ViewListener;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->viewListener:Lcom/amazon/whispersync/roboguice/inject/ViewListener;

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 124
    const-class v4, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 129
    const-class v4, Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;

    iget-object v5, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->contextScope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    invoke-virtual {p0, v4, v5}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bindScope(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V

    .line 130
    const-class v4, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->contextScope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 131
    const-class v4, Landroid/content/res/AssetManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    const-class v5, Lcom/amazon/whispersync/roboguice/inject/AssetManagerProvider;

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 132
    const-class v4, Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule$1;

    invoke-direct {v5, p0}, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule$1;-><init>(Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;)V

    invoke-static {v5}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v4

    const-class v5, Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 133
    const-class v4, Landroid/app/Activity;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule$2;

    invoke-direct {v5, p0}, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule$2;-><init>(Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;)V

    invoke-static {v5}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v4

    const-class v5, Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 134
    const-class v4, Lcom/amazon/whispersync/roboguice/activity/RoboActivity;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule$3;

    invoke-direct {v5, p0}, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule$3;-><init>(Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;)V

    invoke-static {v5}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v4

    const-class v5, Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 135
    const-class v4, Landroid/app/Service;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule$4;

    invoke-direct {v5, p0}, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule$4;-><init>(Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;)V

    invoke-static {v5}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v4

    const-class v5, Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 136
    const-class v4, Lcom/amazon/whispersync/roboguice/service/RoboService;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule$5;

    invoke-direct {v5, p0}, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule$5;-><init>(Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;)V

    invoke-static {v5}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v4

    const-class v5, Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 140
    const-class v4, Landroid/content/SharedPreferences;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    const-class v5, Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider;

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 141
    const-class v4, Landroid/content/res/Resources;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    const-class v5, Lcom/amazon/whispersync/roboguice/inject/ResourcesProvider;

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 142
    const-class v4, Landroid/content/ContentResolver;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    const-class v5, Lcom/amazon/whispersync/roboguice/inject/ContentResolverProvider;

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 143
    const-class v4, Landroid/app/Application;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 144
    const-class v4, Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 145
    const-class v4, Landroid/os/Handler;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    const-class v5, Lcom/amazon/whispersync/roboguice/inject/HandlerProvider;

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 150
    const-class v4, Landroid/location/LocationManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string v6, "location"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 151
    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string/jumbo v6, "window"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 152
    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string v6, "activity"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 153
    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string v6, "power"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 154
    const-class v4, Landroid/app/AlarmManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string v6, "alarm"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 155
    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string v6, "notification"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 156
    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string v6, "keyguard"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 157
    const-class v4, Landroid/os/Vibrator;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string/jumbo v6, "vibrator"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 158
    const-class v4, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string v6, "connectivity"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 159
    const-class v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string/jumbo v6, "wifi"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 160
    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string v6, "input_method"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 161
    const-class v4, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string v6, "sensor"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 162
    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string v6, "phone"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 163
    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string v6, "audio"

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 166
    const-class v4, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/ContextScopedSystemServiceProvider;

    const-string v6, "layout_inflater"

    invoke-direct {v5, v0, v6}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedSystemServiceProvider;-><init>(Lcom/amazon/whispersync/com/google/inject/Provider;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 167
    const-class v4, Landroid/app/SearchManager;

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/amazon/whispersync/roboguice/inject/ContextScopedSystemServiceProvider;

    const-string v6, "search"

    invoke-direct {v5, v0, v6}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedSystemServiceProvider;-><init>(Lcom/amazon/whispersync/com/google/inject/Provider;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 171
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;->any()Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->resourceListener:Lcom/amazon/whispersync/roboguice/inject/ResourceListener;

    invoke-virtual {p0, v0, v4}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bindListener(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;)V

    .line 172
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;->any()Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bindListener(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;)V

    .line 173
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;->any()Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->viewListener:Lcom/amazon/whispersync/roboguice/inject/ViewListener;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bindListener(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;)V

    .line 174
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;->any()Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bindListener(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;)V

    .line 175
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;->any()Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener;

    const-class v2, Lcom/amazon/whispersync/roboguice/event/EventManager;

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener;-><init>(Lcom/amazon/whispersync/com/google/inject/Provider;Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator;)V

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bindListener(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;)V

    .line 178
    invoke-virtual {p0, v3}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->requestInjection(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 181
    const-class v1, Lcom/amazon/whispersync/roboguice/util/Ln;

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 184
    sget-object v0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->fragmentManagerClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/roboguice/inject/FragmentManagerProvider;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 190
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 191
    sget-object v0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->accountManagerClass:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/roboguice/inject/AccountManagerProvider;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
