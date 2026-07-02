.class public Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# static fields
.field private static final APACHE_COMMONS_LOGGING_LOGFACTORY:Ljava/lang/String; = "org.apache.commons.logging.LogFactory"

.field private static final TAG:Ljava/lang/String; = "LogFactory"

.field private static logMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/logging/Log;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->logMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkApacheCommonsLoggingExists()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.apache.commons.logging.LogFactory"

    .line 68
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 73
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return v0
.end method

.method public static declared-synchronized getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;
    .locals 1

    const-class v0, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;

    monitor-enter v0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getLog(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/logging/Log;
    .locals 6

    const-class v0, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->logMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/logging/Log;

    if-nez v1, :cond_1

    .line 50
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->checkApacheCommonsLoggingExists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 52
    :try_start_1
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->logMap:Ljava/util/Map;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 55
    :goto_0
    :try_start_3
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->TAG:Ljava/lang/String;

    const-string v4, "Could not create log from org.apache.commons.logging.LogFactory"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v1, v2

    :cond_0
    if-nez v1, :cond_1

    .line 59
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/logging/AndroidLog;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/com/amazonaws/logging/AndroidLog;-><init>(Ljava/lang/String;)V

    .line 60
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->logMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
