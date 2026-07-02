.class public abstract Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule;
.super Ljava/lang/Object;
.source "StandaloneDownloadDaggerModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule;->Companion:Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule$Companion;

    return-void
.end method

.method public static final provideKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule;->Companion:Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule$Companion;->provideKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    return-object v0
.end method

.method public static final provideNetworkPolicy()Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule;->Companion:Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule$Companion;->provideNetworkPolicy()Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

    move-result-object v0

    return-object v0
.end method
