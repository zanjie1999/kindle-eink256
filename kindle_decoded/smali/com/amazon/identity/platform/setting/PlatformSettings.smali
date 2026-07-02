.class public Lcom/amazon/identity/platform/setting/PlatformSettings;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/platform/setting/PlatformSettings$Namespace;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformSettings"

.field private static vu:Lcom/amazon/identity/platform/setting/PlatformSettings;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSystemPropertiesWrapper:Lcom/amazon/identity/auth/device/eg;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/amazon/identity/auth/device/eg;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/eg;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/platform/setting/PlatformSettings;->mSystemPropertiesWrapper:Lcom/amazon/identity/auth/device/eg;

    .line 31
    iput-object p1, p0, Lcom/amazon/identity/platform/setting/PlatformSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized aV(Landroid/content/Context;)Lcom/amazon/identity/platform/setting/PlatformSettings;
    .locals 2

    const-class v0, Lcom/amazon/identity/platform/setting/PlatformSettings;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/amazon/identity/platform/setting/PlatformSettings;->vu:Lcom/amazon/identity/platform/setting/PlatformSettings;

    if-eqz v1, :cond_0

    .line 47
    sget-object p0, Lcom/amazon/identity/platform/setting/PlatformSettings;->vu:Lcom/amazon/identity/platform/setting/PlatformSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 50
    :cond_0
    :try_start_1
    new-instance v1, Lcom/amazon/identity/platform/setting/PlatformSettings;

    invoke-direct {v1, p0}, Lcom/amazon/identity/platform/setting/PlatformSettings;-><init>(Landroid/content/Context;)V

    .line 52
    sput-object v1, Lcom/amazon/identity/platform/setting/PlatformSettings;->vu:Lcom/amazon/identity/platform/setting/PlatformSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/identity/platform/setting/PlatformSettings;->mSystemPropertiesWrapper:Lcom/amazon/identity/auth/device/eg;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/eg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public eT(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 58
    invoke-static {}, Lcom/amazon/identity/auth/device/mw;->iV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/amazon/identity/platform/setting/PlatformSettings;->mSystemPropertiesWrapper:Lcom/amazon/identity/auth/device/eg;

    iget-object v1, p0, Lcom/amazon/identity/platform/setting/PlatformSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/eg;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/platform/setting/PlatformSettings;->mSystemPropertiesWrapper:Lcom/amazon/identity/auth/device/eg;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/eg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public f(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/identity/platform/setting/PlatformSettings;->mSystemPropertiesWrapper:Lcom/amazon/identity/auth/device/eg;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/eg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 81
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
