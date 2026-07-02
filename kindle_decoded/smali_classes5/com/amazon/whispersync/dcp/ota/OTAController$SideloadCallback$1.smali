.class Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback$1;
.super Ljava/lang/Object;
.source "OTAController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->onSideloadFound(Lcom/amazon/whispersync/dcp/ota/Sideload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;

.field final synthetic val$sideload:Lcom/amazon/whispersync/dcp/ota/Sideload;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;Lcom/amazon/whispersync/dcp/ota/Sideload;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback$1;->this$1:Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback$1;->val$sideload:Lcom/amazon/whispersync/dcp/ota/Sideload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback$1;->this$1:Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->access$000(Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;)Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback$1;->val$sideload:Lcom/amazon/whispersync/dcp/ota/Sideload;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;->onSideloadFound(Lcom/amazon/whispersync/dcp/ota/Sideload;)V

    return-void
.end method
