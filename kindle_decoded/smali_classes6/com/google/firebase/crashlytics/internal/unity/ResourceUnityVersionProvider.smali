.class public Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;
.super Ljava/lang/Object;
.source "ResourceUnityVersionProvider.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/unity/UnityVersionProvider;


# static fields
.field private static final UNITY_EDITOR_VERSION:Ljava/lang/String; = "com.google.firebase.crashlytics.unity_version"

.field private static isUnityVersionSet:Z = false

.field private static unityVersion:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized resolveUnityEditorVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-boolean v1, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->isUnityVersionSet:Z

    if-eqz v1, :cond_0

    .line 38
    sget-object p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->unityVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, "com.google.firebase.crashlytics.unity_version"

    const-string v2, "string"

    .line 40
    invoke-static {p0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->unityVersion:Ljava/lang/String;

    const/4 p0, 0x1

    .line 43
    sput-boolean p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->isUnityVersionSet:Z

    .line 44
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unity Editor version is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->unityVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    .line 46
    :cond_1
    sget-object p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->unityVersion:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getUnityVersion()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->resolveUnityEditorVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
