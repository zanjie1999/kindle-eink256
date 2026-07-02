.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;
.super Ljava/util/concurrent/FutureTask;
.source "GattClientCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FutureWithSettableError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFailureCause:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;->mFailureCause:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method protected bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;->set(Ljava/lang/Void;)V

    return-void
.end method

.method protected set(Ljava/lang/Void;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;->mFailureCause:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0, v0}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void

    .line 150
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setFailureCause(Ljava/lang/Exception;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;->mFailureCause:Ljava/lang/Exception;

    return-void
.end method
