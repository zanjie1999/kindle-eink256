.class public Lcom/amazon/android/webkit/android/AndroidPluginManager;
.super Ljava/lang/Object;
.source "AndroidPluginManager.java"

# interfaces
.implements Lcom/amazon/android/webkit/AmazonPluginManager;


# static fields
.field private static final GET_INSTANCE:Ljava/lang/reflect/Method;

.field private static final PLUGIN_MANAGER:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final REFRESH_PLUGINS:Ljava/lang/reflect/Method;


# instance fields
.field private final receiver:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    :try_start_0
    const-string v0, "android.webkit.PluginManager"

    .line 17
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/webkit/android/AndroidPluginManager;->PLUGIN_MANAGER:Ljava/lang/Class;

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 18
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/webkit/android/AndroidPluginManager;->GET_INSTANCE:Ljava/lang/reflect/Method;

    .line 19
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidPluginManager;->PLUGIN_MANAGER:Ljava/lang/Class;

    const-string/jumbo v1, "refreshPlugins"

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/webkit/android/AndroidPluginManager;->REFRESH_PLUGINS:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidPluginManager;->GET_INSTANCE:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-static {v0, p1, v1}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidPluginManager;->receiver:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public refreshPlugins(Z)V
    .locals 4

    .line 33
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidPluginManager;->REFRESH_PLUGINS:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidPluginManager;->receiver:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
