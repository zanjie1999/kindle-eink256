.class Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$2;
.super Ljava/lang/Object;
.source "FFSArcusClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->getStoredConfiguration()Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/SingleSource<",
        "+",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/SingleSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/SingleSource<",
            "+",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->openConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    invoke-static {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object v1

    .line 110
    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v0, 0x0

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;ZJ)V

    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$2;->call()Lio/reactivex/SingleSource;

    move-result-object v0

    return-object v0
.end method
