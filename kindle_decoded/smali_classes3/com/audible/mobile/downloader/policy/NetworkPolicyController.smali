.class public Lcom/audible/mobile/downloader/policy/NetworkPolicyController;
.super Ljava/lang/Object;
.source "NetworkPolicyController.java"


# static fields
.field private static appContext:Landroid/content/Context;

.field private static contentPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultPolicy:Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/downloader/policy/NetworkPolicyController;->contentPolicyMap:Ljava/util/Map;

    .line 19
    new-instance v0, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyNetworkStatePolicyFactory;

    invoke-direct {v0}, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyNetworkStatePolicyFactory;-><init>()V

    sput-object v0, Lcom/audible/mobile/downloader/policy/NetworkPolicyController;->defaultPolicy:Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;

    return-void
.end method

.method static getAppContext()Landroid/content/Context;
    .locals 1

    .line 41
    sget-object v0, Lcom/audible/mobile/downloader/policy/NetworkPolicyController;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPolicy(Ljava/lang/String;Landroid/content/Context;)Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;
    .locals 1

    .line 56
    sget-object v0, Lcom/audible/mobile/downloader/policy/NetworkPolicyController;->contentPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;

    if-nez p0, :cond_0

    .line 58
    sget-object p0, Lcom/audible/mobile/downloader/policy/NetworkPolicyController;->defaultPolicy:Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_1
    invoke-interface {p0, p1}, Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;->getPolicy(Landroid/content/Context;)Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;

    move-result-object p0

    return-object p0
.end method

.method public static injectDefaultPolicy(Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;)V
    .locals 0

    .line 51
    sput-object p0, Lcom/audible/mobile/downloader/policy/NetworkPolicyController;->defaultPolicy:Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;

    return-void
.end method
