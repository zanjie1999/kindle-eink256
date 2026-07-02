.class public Lcom/amazon/kindle/util/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static getSystemPropertyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kindle/util/SystemProperties;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/util/SystemProperties;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/amazon/kindle/util/SystemProperties;->getSystemPropertyMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-class v0, Lcom/amazon/kindle/util/SystemProperties;

    monitor-enter v0

    const/4 v1, 0x0

    .line 28
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/util/SystemProperties;->getSystemPropertyMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const-string v2, "android.os.SystemProperties"

    .line 29
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "get"

    new-array v6, v4, [Ljava/lang/Class;

    .line 30
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/amazon/kindle/util/SystemProperties;->getSystemPropertyMethod:Ljava/lang/reflect/Method;

    .line 33
    :cond_0
    sget-object v2, Lcom/amazon/kindle/util/SystemProperties;->getSystemPropertyMethod:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 41
    :try_start_1
    sget-object v2, Lcom/amazon/kindle/util/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get system property"

    invoke-static {v2, v3, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 39
    sget-object v2, Lcom/amazon/kindle/util/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get system property"

    invoke-static {v2, v3, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 37
    sget-object v2, Lcom/amazon/kindle/util/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get system property"

    invoke-static {v2, v3, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 35
    sget-object v2, Lcom/amazon/kindle/util/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get system property"

    invoke-static {v2, v3, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method
