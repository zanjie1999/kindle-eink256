.class public Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;
.super Ljava/lang/Object;
.source "BleCommandExecutor.java"


# instance fields
.field private final mCommandExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;->mCommandExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public executeCommand(Lcom/amazon/whisperbridge/ble/command/BleCommand;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whisperbridge/ble/command/BleCommand<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;->mCommandExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
