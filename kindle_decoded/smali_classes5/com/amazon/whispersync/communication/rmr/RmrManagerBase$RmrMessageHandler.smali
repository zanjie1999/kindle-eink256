.class Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrMessageHandler;
.super Ljava/lang/Object;
.source "RmrManagerBase.java"

# interfaces
.implements Lamazon/whispersync/communication/MessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RmrMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrMessageHandler;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$1;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrMessageHandler;-><init>(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)V

    return-void
.end method


# virtual methods
.method public onMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;)V
    .locals 2

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrMessageHandler;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$100(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->decodeMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;)V
    :try_end_0
    .catch Lamazon/whispersync/communication/CommunicationBaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    invoke-static {}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "RmrMessageHandler.onMessage"

    const-string v1, "error occurred handling RMR message"

    invoke-virtual {p2, p1, v1, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onMessageFragment(Lamazon/whispersync/communication/identity/EndpointIdentity;ILamazon/whispersync/communication/Message;Z)V
    .locals 0

    .line 205
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No fragmentation support in RMR yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
