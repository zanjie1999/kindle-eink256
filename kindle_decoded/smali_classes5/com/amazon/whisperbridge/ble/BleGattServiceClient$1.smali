.class Lcom/amazon/whisperbridge/ble/BleGattServiceClient$1;
.super Ljava/lang/Object;
.source "BleGattServiceClient.java"

# interfaces
.implements Lcom/amazon/whisperbridge/ble/utility/ExecutorServiceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperbridge/ble/BleGattServiceClient;-><init>(Ljava/util/UUID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
