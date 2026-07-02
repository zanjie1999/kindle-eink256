.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;
.super Ljava/lang/Object;
.source "GattClientCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->onConnectionStateChanged(Lcom/amazon/whisperbridge/ble/BleGattClient;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

.field final synthetic val$newState:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;II)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    iput p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->val$status:I

    iput p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->val$newState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 83
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    invoke-static {v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$100(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 84
    :try_start_0
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$000()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "onConnectionStateChanged status: %d, newState: %d"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->val$status:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget v6, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->val$newState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    iget v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->val$newState:I

    if-ne v1, v4, :cond_0

    .line 88
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    invoke-static {v1, v7}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$202(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;Z)Z

    .line 89
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$300(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$400(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 91
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$500(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;->onConnect()V

    .line 92
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client connected"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 93
    :cond_0
    iget v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->val$newState:I

    if-nez v1, :cond_3

    .line 94
    iget v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->val$status:I

    if-nez v1, :cond_1

    .line 95
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Successfully Disconnection"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$500(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;->onDisconnect()V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$200(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected Disconnection"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$500(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;

    move-result-object v1

    iget v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->val$status:I

    invoke-interface {v1, v2}, Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;->onConnectionFailure(I)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Triggering failure cause to be run"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$400(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;

    iget v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->val$status:I

    invoke-direct {v2, v3}, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;->setFailureCause(Ljava/lang/Exception;)V

    .line 104
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$400(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 106
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Haven\'t connected yet, wait until retry attempts"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client disconnected"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 113
    :try_start_2
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error while trying to change connection state"

    invoke-static {v2, v3, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    invoke-static {v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$400(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;->setFailureCause(Ljava/lang/Exception;)V

    .line 115
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$400(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 117
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
