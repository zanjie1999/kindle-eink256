.class final Lcom/amazon/kindle/ffs/plugin/FFSPlugin$provisioningServiceConfiguration$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FFSPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/plugin/FFSPlugin;-><init>(JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$provisioningServiceConfiguration$2;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
    .locals 3

    .line 121
    sget-object v0, Lcom/amazon/kindle/ffs/ProvisioningServiceConfigurationFactory;->INSTANCE:Lcom/amazon/kindle/ffs/ProvisioningServiceConfigurationFactory;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$provisioningServiceConfiguration$2;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-static {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->access$getSdk$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    const-string v2, "sdk.logger"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/logging/ILogger;->isDebugEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ffs/ProvisioningServiceConfigurationFactory;->create(Z)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$provisioningServiceConfiguration$2;->invoke()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object v0

    return-object v0
.end method
