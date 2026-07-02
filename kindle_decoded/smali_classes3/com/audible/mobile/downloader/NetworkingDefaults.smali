.class public Lcom/audible/mobile/downloader/NetworkingDefaults;
.super Ljava/lang/Object;
.source "NetworkingDefaults.java"


# static fields
.field private static INSTANCE:Lcom/audible/mobile/downloader/NetworkingDefaults;

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/downloader/NetworkingDefaults;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/downloader/NetworkingDefaults;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDefaultUserAgent()Ljava/lang/String;
    .locals 2

    const-string v0, "http.agent"

    .line 135
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(No default User-Agent, Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", API "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Model "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/audible/mobile/downloader/NetworkingDefaults;
    .locals 2

    const-class v0, Lcom/audible/mobile/downloader/NetworkingDefaults;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/audible/mobile/downloader/NetworkingDefaults;->INSTANCE:Lcom/audible/mobile/downloader/NetworkingDefaults;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/audible/mobile/downloader/NetworkingDefaults;

    invoke-direct {v1}, Lcom/audible/mobile/downloader/NetworkingDefaults;-><init>()V

    sput-object v1, Lcom/audible/mobile/downloader/NetworkingDefaults;->INSTANCE:Lcom/audible/mobile/downloader/NetworkingDefaults;

    .line 40
    :cond_0
    sget-object v1, Lcom/audible/mobile/downloader/NetworkingDefaults;->INSTANCE:Lcom/audible/mobile/downloader/NetworkingDefaults;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized combineCustomUserAgentWithDefaultUserAgent(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/audible/mobile/downloader/NetworkingDefaults;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/audible/mobile/downloader/NetworkingDefaults;->setUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getUserAgent()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/NetworkingDefaults;->userAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public injectAppInfoIntoUserAgent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 75
    new-instance v0, Lcom/audible/mobile/domain/impl/ContextBasedApplicationInformationProviderImpl;

    invoke-direct {v0, p1}, Lcom/audible/mobile/domain/impl/ContextBasedApplicationInformationProviderImpl;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-interface {v0}, Lcom/audible/mobile/domain/ApplicationInformationProvider;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-interface {v0}, Lcom/audible/mobile/domain/ApplicationInformationProvider;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " b:"

    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-interface {v0}, Lcom/audible/mobile/domain/ApplicationInformationProvider;->getVersionCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {p2}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/audible/mobile/downloader/NetworkingDefaults;->combineCustomUserAgentWithDefaultUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized setUserAgent(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    iput-object p1, p0, Lcom/audible/mobile/downloader/NetworkingDefaults;->userAgent:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/audible/mobile/downloader/NetworkingDefaults;->logger:Lorg/slf4j/Logger;

    const-string v1, "AAP UserAgent is now set to: \'{}\'"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
