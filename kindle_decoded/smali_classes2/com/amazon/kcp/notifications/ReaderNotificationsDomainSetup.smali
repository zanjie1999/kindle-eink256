.class public Lcom/amazon/kcp/notifications/ReaderNotificationsDomainSetup;
.super Ljava/lang/Object;
.source "ReaderNotificationsDomainSetup.java"


# static fields
.field private static final DOMAIN_KEY:Ljava/lang/String; = "domain"

.field private static final NOTIFICATIONS_BUILD_FILE_NAME:Ljava/lang/String; = "NOTIFICATIONS_BUILD"

.field private static final NOTIFICATIONS_TEST_DOMAIN_FILE_NAME:Ljava/lang/String; = "notificationsTestDomain.json"

.field private static final RESET_NOTIFICATIONS_ENDPOINT:Ljava/lang/String; = "RESET_NOTIFICATIONS_ENDPOINT"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kcp/notifications/ReaderNotificationsDomainSetup;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/ReaderNotificationsDomainSetup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configureBuildFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RESET_NOTIFICATIONS_ENDPOINT"

    .line 43
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    const-string v1, "NOTIFICATIONS_BUILD"

    .line 48
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 53
    :cond_1
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "Notifications.pref"

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 55
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "endpointarn"

    .line 56
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    sget-object p0, Lcom/amazon/kcp/notifications/ReaderNotificationsDomainSetup;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Made changes to build to make the app point to the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of the Notifications Backend"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 63
    :catch_1
    :goto_0
    :try_start_2
    sget-object p0, Lcom/amazon/kcp/notifications/ReaderNotificationsDomainSetup;->TAG:Ljava/lang/String;

    const-string p1, "Failed opening or writing to notifications build file."

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 68
    :cond_3
    throw p0
.end method

.method public static setup(Landroid/content/Context;)V
    .locals 4

    const-string v0, "domain"

    const/4 v1, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 80
    new-instance v2, Ljava/io/File;

    const-string v3, "notificationsTestDomain.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v1}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 83
    const-class v3, Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 84
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amazon/kcp/notifications/ReaderNotificationsDomainSetup;->configureBuildFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    sget-object p0, Lcom/amazon/kcp/notifications/ReaderNotificationsDomainSetup;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifications Domain setup file not found at : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Connecting to default domain(prod)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    sget-object p0, Lcom/amazon/kcp/notifications/ReaderNotificationsDomainSetup;->TAG:Ljava/lang/String;

    const-string v0, "Error in open Notifications Domain File. Connecting to default domain(prod)."

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
