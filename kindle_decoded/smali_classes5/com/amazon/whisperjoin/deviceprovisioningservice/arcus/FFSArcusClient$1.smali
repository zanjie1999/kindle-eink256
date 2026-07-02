.class Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;
.super Ljava/lang/Object;
.source "FFSArcusClient.java"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->syncWithArcus()Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;Lio/reactivex/SingleEmitter;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->sync(Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V

    return-void
.end method
