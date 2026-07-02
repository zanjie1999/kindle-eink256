.class Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3$1;
.super Ljava/lang/Object;
.source "SyncCoordinator.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;->call()Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3$1;->this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3$1;->this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Persisting data retrieved from network"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3$1;->this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->access$002(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3$1;->this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->persistProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    .line 152
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3$1;->this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->persistDataToSharedPreferences(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3$1;->this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->onDataFetchedFromNetwork(Ljava/lang/Object;)V

    .line 154
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3$1;->apply(Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
