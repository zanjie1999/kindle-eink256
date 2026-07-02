.class public Lcom/audible/mobile/downloader/policy/RetryPolicyController;
.super Ljava/lang/Object;
.source "RetryPolicyController.java"


# static fields
.field private static contentPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultPolicy:Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/downloader/policy/RetryPolicyController;->contentPolicyMap:Ljava/util/Map;

    .line 16
    new-instance v0, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyRetryPolicyFactory;

    invoke-direct {v0}, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyRetryPolicyFactory;-><init>()V

    sput-object v0, Lcom/audible/mobile/downloader/policy/RetryPolicyController;->defaultPolicy:Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;

    return-void
.end method

.method public static getPolicy(Ljava/lang/String;)Lcom/audible/mobile/downloader/policy/RetryPolicy;
    .locals 1

    .line 36
    sget-object v0, Lcom/audible/mobile/downloader/policy/RetryPolicyController;->contentPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;

    if-nez p0, :cond_0

    .line 38
    sget-object p0, Lcom/audible/mobile/downloader/policy/RetryPolicyController;->defaultPolicy:Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_1
    invoke-interface {p0}, Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;->getPolicy()Lcom/audible/mobile/downloader/policy/RetryPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static injectDefaultPolicy(Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;)V
    .locals 0

    .line 25
    sput-object p0, Lcom/audible/mobile/downloader/policy/RetryPolicyController;->defaultPolicy:Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;

    return-void
.end method

.method public static injectPolicy(Ljava/lang/String;Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;)V
    .locals 1

    .line 20
    sget-object v0, Lcom/audible/mobile/downloader/policy/RetryPolicyController;->contentPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
