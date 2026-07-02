.class Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver$2;
.super Ljava/lang/Object;
.source "OTAController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->onChangeImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;

.field final synthetic val$status:Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver$2;->this$1:Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver$2;->val$status:Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver$2;->this$1:Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->access$600(Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;)Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver$2;->val$status:Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;->onStatusUpdate(Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;)V

    return-void
.end method
