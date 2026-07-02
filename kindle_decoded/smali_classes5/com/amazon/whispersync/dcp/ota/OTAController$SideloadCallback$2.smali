.class Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback$2;
.super Ljava/lang/Object;
.source "OTAController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->onSideloadLost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback$2;->this$1:Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback$2;->this$1:Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->access$000(Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;)Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;->onSideloadLost()V

    return-void
.end method
