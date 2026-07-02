.class Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver$1;
.super Ljava/lang/Object;
.source "OTAController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver$1;->this$1:Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver$1;->this$1:Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->access$300(Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;)V

    return-void
.end method
