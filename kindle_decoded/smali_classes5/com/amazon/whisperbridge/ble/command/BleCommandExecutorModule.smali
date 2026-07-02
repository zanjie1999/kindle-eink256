.class public Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule;
.super Ljava/lang/Object;
.source "BleCommandExecutorModule.java"


# static fields
.field private static sCommandExecutor:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideCommandExecutor()Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule;->sCommandExecutor:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;

    invoke-direct {v0}, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;-><init>()V

    sput-object v0, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule;->sCommandExecutor:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;

    .line 44
    :cond_0
    sget-object v0, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule;->sCommandExecutor:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;

    return-object v0
.end method
