.class public Lcom/amazon/kcp/application/ActivityManagerHook;
.super Ljava/lang/Object;
.source "ActivityManagerHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/ActivityManagerHook$KindleIActivityManagerProxy;
    }
.end annotation


# static fields
.field private static final IS_TOP_OF_TASK_METHOD:Ljava/lang/String; = "isTopOfTask"

.field private static final REPORT_SIZE_CONFIGURATIONS_METHOD:Ljava/lang/String; = "reportSizeConfigurations"

.field private static final TAG:Ljava/lang/String; = "ActivityManagerHook"


# direct methods
.method public static hook()V
    .locals 7

    const-string v0, "ActivityManagerHook"

    .line 40
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/ActivityManagerHook;->isAndroid7()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.app.ActivityManagerNative"

    .line 41
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "gDefault"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/ActivityManagerHook;->isAndroid8or9()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.app.ActivityManager"

    .line 44
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IActivityManagerSingleton"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v3, "android.util.Singleton"

    .line 60
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "mInstance"

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Lcom/amazon/kcp/application/ActivityManagerHook$KindleIActivityManagerProxy;

    invoke-direct {v6, v2}, Lcom/amazon/kcp/application/ActivityManagerHook$KindleIActivityManagerProxy;-><init>(Ljava/lang/Object;)V

    .line 69
    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "ActivityManager hook success!"

    .line 77
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "Skip ActivityManager Hook"

    .line 47
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static isAndroid7()Z
    .locals 2

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isAndroid8or9()Z
    .locals 2

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
