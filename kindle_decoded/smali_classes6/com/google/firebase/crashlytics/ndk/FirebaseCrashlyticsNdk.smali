.class Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;
.super Ljava/lang/Object;
.source "FirebaseCrashlyticsNdk.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk$SignalHandlerInstaller;
    }
.end annotation


# static fields
.field private static final FILES_PATH:Ljava/lang/String; = ".com.google.firebase.crashlytics-ndk"

.field private static instance:Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;


# instance fields
.field private final controller:Lcom/google/firebase/crashlytics/ndk/CrashpadController;

.field private currentSessionId:Ljava/lang/String;

.field private installHandlerDuringPrepareSession:Z

.field private signalHandlerInstaller:Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk$SignalHandlerInstaller;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/ndk/CrashpadController;Z)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/CrashpadController;

    .line 58
    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->installHandlerDuringPrepareSession:Z

    return-void
.end method

.method static create(Landroid/content/Context;Z)Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;
    .locals 4

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".com.google.firebase.crashlytics-ndk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcom/google/firebase/crashlytics/ndk/CrashpadController;

    new-instance v2, Lcom/google/firebase/crashlytics/ndk/JniNativeApi;

    invoke-direct {v2, p0}, Lcom/google/firebase/crashlytics/ndk/JniNativeApi;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;

    invoke-direct {v3, v0}, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;-><init>(Ljava/io/File;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/ndk/NativeApi;Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;)V

    .line 41
    new-instance p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;

    invoke-direct {p0, v1, p1}, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;-><init>(Lcom/google/firebase/crashlytics/ndk/CrashpadController;Z)V

    sput-object p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->instance:Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;

    return-object p0
.end method


# virtual methods
.method public finalizeSession(Ljava/lang/String;)V
    .locals 3

    .line 100
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalizing native session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/CrashpadController;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->finalizeSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not finalize native session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getSessionFileProvider(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;
    .locals 2

    .line 111
    new-instance v0, Lcom/google/firebase/crashlytics/ndk/SessionFilesProvider;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/CrashpadController;

    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->getFilesForSession(Ljava/lang/String;)Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/crashlytics/ndk/SessionFilesProvider;-><init>(Lcom/google/firebase/crashlytics/ndk/SessionFiles;)V

    return-object v0
.end method

.method public hasCrashDataForCurrentSession()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->currentSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->hasCrashDataForSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCrashDataForSession(Ljava/lang/String;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/CrashpadController;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->hasCrashDataForSession(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$prepareNativeSession$0$FirebaseCrashlyticsNdk(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/StaticSessionData;)V
    .locals 8

    .line 86
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing native session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/CrashpadController;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->initialize(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/StaticSessionData;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 88
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to initialize Crashlytics NDK for session "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized prepareNativeSession(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/StaticSessionData;)V
    .locals 8

    monitor-enter p0

    .line 83
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->currentSessionId:Ljava/lang/String;

    .line 84
    new-instance v7, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$FirebaseCrashlyticsNdk$uWXEmlTQlEwiUIn6o2ZyerrhSEM;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$FirebaseCrashlyticsNdk$uWXEmlTQlEwiUIn6o2ZyerrhSEM;-><init>(Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/StaticSessionData;)V

    iput-object v7, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->signalHandlerInstaller:Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk$SignalHandlerInstaller;

    .line 92
    iget-boolean p1, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->installHandlerDuringPrepareSession:Z

    if-eqz p1, :cond_0

    .line 93
    invoke-interface {v7}, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk$SignalHandlerInstaller;->installHandler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
