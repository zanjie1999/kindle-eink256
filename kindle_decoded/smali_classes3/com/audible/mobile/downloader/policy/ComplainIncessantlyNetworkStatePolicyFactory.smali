.class Lcom/audible/mobile/downloader/policy/ComplainIncessantlyNetworkStatePolicyFactory;
.super Ljava/lang/Object;
.source "ComplainIncessantlyNetworkStatePolicyFactory.java"

# interfaces
.implements Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;


# static fields
.field protected static final LOGGER:Lorg/slf4j/Logger;

.field private static silenced:Z = false


# instance fields
.field private factory:Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyNetworkStatePolicyFactory;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyNetworkStatePolicyFactory;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/audible/mobile/downloader/policy/DownloadOnAnyNetworkPolicyFactory;

    invoke-direct {v0}, Lcom/audible/mobile/downloader/policy/DownloadOnAnyNetworkPolicyFactory;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyNetworkStatePolicyFactory;->factory:Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;

    return-void
.end method


# virtual methods
.method public getPolicy(Landroid/content/Context;)Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;
    .locals 4

    .line 27
    sget-boolean v0, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyNetworkStatePolicyFactory;->silenced:Z

    if-nez v0, :cond_0

    .line 28
    sget-object v0, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyNetworkStatePolicyFactory;->LOGGER:Lorg/slf4j/Logger;

    const-class v1, Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyNetworkStatePolicyFactory;->factory:Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CONFIGURATION MISSING: Consuming application has not configured an appropriate default {}.  Using {} instead.  See \"http://tiny/4n875cza/wamazindeAudiTeamConnAudi\" for instructions on how to eliminate this message."

    .line 28
    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/policy/ComplainIncessantlyNetworkStatePolicyFactory;->factory:Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;

    invoke-interface {v0, p1}, Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;->getPolicy(Landroid/content/Context;)Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;

    move-result-object p1

    return-object p1
.end method
