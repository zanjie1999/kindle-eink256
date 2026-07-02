.class public Lcom/amazon/weblab/mobile/MobileWeblabClientFactory;
.super Ljava/lang/Object;
.source "MobileWeblabClientFactory.java"


# static fields
.field private static sClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/weblab/mobile/IMobileWeblabClient;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/weblab/mobile/MobileWeblabClientFactory;->sClients:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createMobileWeblabClient(Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/weblab/mobile/IMobileWeblabClient;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-class v0, Lcom/amazon/weblab/mobile/MobileWeblabClientFactory;

    monitor-enter v0

    if-eqz p0, :cond_3

    .line 83
    :try_start_0
    sget-object v1, Lcom/amazon/weblab/mobile/MobileWeblabClientFactory;->sClients:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/weblab/mobile/MobileWeblabClientFactory;->sClients:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attr must have a unique identifier"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    .line 91
    new-instance v2, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    invoke-static {}, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->values()[Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;-><init>(Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;[Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;)V

    .line 92
    new-instance v3, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;

    invoke-direct {v3, p1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;-><init>(Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;)V

    .line 94
    new-instance p1, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;-><init>(Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 96
    sget-object p2, Lcom/amazon/weblab/mobile/MobileWeblabClientFactory;->sClients:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit v0

    return-object p1

    .line 87
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "application context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "clientAttr has no registered weblabs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method
