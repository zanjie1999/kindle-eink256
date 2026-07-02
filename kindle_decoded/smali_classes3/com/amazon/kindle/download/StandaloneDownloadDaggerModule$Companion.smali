.class public final Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule$Companion;
.super Ljava/lang/Object;
.source "StandaloneDownloadDaggerModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/kcp/application/KRLForDownloadFacade;

    invoke-direct {v0}, Lcom/amazon/kcp/application/KRLForDownloadFacade;-><init>()V

    return-object v0
.end method

.method public final provideNetworkPolicy()Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/kindle/download/DefaultDownloadNetworkingPolicy;

    invoke-direct {v0}, Lcom/amazon/kindle/download/DefaultDownloadNetworkingPolicy;-><init>()V

    return-object v0
.end method
