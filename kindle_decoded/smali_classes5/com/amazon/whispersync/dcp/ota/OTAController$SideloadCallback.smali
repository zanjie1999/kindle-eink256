.class Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;
.super Lcom/amazon/whispersync/dcp/ota/ISideloadCallback$Stub;
.source "OTAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/ota/OTAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SideloadCallback"
.end annotation


# instance fields
.field private final mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mListener:Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;

.field final synthetic this$0:Lcom/amazon/whispersync/dcp/ota/OTAController;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/ota/OTAController;Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->this$0:Lcom/amazon/whispersync/dcp/ota/OTAController;

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/ISideloadCallback$Stub;-><init>()V

    .line 103
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->mListener:Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;)Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->mListener:Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->shutdown()V

    return-void
.end method

.method private shutdown()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public onSideloadFound(Lcom/amazon/whispersync/dcp/ota/Sideload;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->this$0:Lcom/amazon/whispersync/dcp/ota/OTAController;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->access$100(Lcom/amazon/whispersync/dcp/ota/OTAController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback$1;-><init>(Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;Lcom/amazon/whispersync/dcp/ota/Sideload;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSideloadLost()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->this$0:Lcom/amazon/whispersync/dcp/ota/OTAController;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->access$100(Lcom/amazon/whispersync/dcp/ota/OTAController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback$2;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback$2;-><init>(Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
