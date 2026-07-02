.class Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$2;
.super Ljava/lang/Object;
.source "SyncCoordinator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->getPersistedData()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/ObservableSource<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->readPersistedDataFromSharedPreferences()Ljava/lang/Object;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->readPersistedProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-static {v2, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;Ljava/lang/Object;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Using persisted data"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-static {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->access$002(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->onPersistedDataFetched(Ljava/lang/Object;)V

    .line 131
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No Persisted data"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

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

    .line 119
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$2;->call()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
