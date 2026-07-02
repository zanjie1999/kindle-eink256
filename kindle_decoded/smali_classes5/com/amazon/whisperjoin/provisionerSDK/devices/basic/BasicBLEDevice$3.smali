.class Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$3;
.super Ljava/lang/Object;
.source "BasicBLEDevice.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->waitForConnectedState()Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Integer;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;)Lio/reactivex/CompletableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

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

    .line 115
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$3;->apply(Ljava/lang/Integer;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
