.class public Lcom/amazon/kindle/tutorial/UserDisplayCountManager;
.super Ljava/lang/Object;
.source "UserDisplayCountManager.java"

# interfaces
.implements Lcom/amazon/kindle/tutorial/IDisplayCountManager;


# static fields
.field private static final FALLBACK_UNKNOWN_USER:Ljava/lang/String; = "fallback_user"

.field private static final PREF_DISPLAY_COUNT:Ljava/lang/String; = "display.count"

.field private static final SHARED_PREFS_DISPLAY_COUNT:Ljava/lang/String; = "TutorialDisplayCounts"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/IAuthenticationManager;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    const-string p2, "TutorialDisplayCounts"

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    sget-object v0, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->TAG:Ljava/lang/String;

    const-string v1, "Received null/empty account ID from auth manager. Using fallback generic user."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fallback_user"

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "display.count"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object v0, v1, p1

    const-string p1, "%s.%s.%s"

    .line 55
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized getDisplayCount(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hasDisplayCount(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDisplayCount(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
