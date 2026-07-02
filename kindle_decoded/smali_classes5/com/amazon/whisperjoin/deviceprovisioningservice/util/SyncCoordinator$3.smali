.class Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;
.super Ljava/lang/Object;
.source "SyncCoordinator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->getDataFromNetwork()Lio/reactivex/Observable;
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
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->fetchDataFromNetwork()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3$1;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMapObservable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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

    .line 143
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;->call()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
