.class Lcom/audible/mobile/downloader/policy/ComplainIncessantlyRetryPolicyFactory;
.super Ljava/lang/Object;
.source "ComplainIncessantlyRetryPolicyFactory.java"

# interfaces
.implements Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;


# static fields
.field protected static final LOGGER:Lorg/slf4j/Logger;

.field private static final factory:Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;

.field private static silenced:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyRetryPolicyFactory;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyRetryPolicyFactory;->LOGGER:Lorg/slf4j/Logger;

    .line 19
    new-instance v0, Lcom/audible/mobile/downloader/policy/TryAlwaysFactory;

    invoke-direct {v0}, Lcom/audible/mobile/downloader/policy/TryAlwaysFactory;-><init>()V

    sput-object v0, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyRetryPolicyFactory;->factory:Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicy()Lcom/audible/mobile/downloader/policy/RetryPolicy;
    .locals 4

    .line 24
    sget-boolean v0, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyRetryPolicyFactory;->silenced:Z

    if-nez v0, :cond_0

    .line 25
    sget-object v0, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyRetryPolicyFactory;->LOGGER:Lorg/slf4j/Logger;

    const-class v1, Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyRetryPolicyFactory;->factory:Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CONFIGURATION MISSING: Consuming application has not configured an appropriate default {}.  Using {} instead.  See \"http://tiny/4n875cza/wamazindeAudiTeamConnAudi\" for instructions on how to eliminate this message."

    .line 25
    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    :cond_0
    sget-object v0, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyRetryPolicyFactory;->factory:Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;

    invoke-interface {v0}, Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;->getPolicy()Lcom/audible/mobile/downloader/policy/RetryPolicy;

    move-result-object v0

    return-object v0
.end method
