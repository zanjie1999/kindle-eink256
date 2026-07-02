.class Lcom/amazon/kindle/panels/ReaderPanelController$1;
.super Ljava/lang/Object;
.source "ReaderPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/panels/ReaderPanelController;->bindPanelContent(Lcom/amazon/kindle/panels/PanelProviderState;Lcom/amazon/kindle/panels/PanelLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/panels/ReaderPanelController;

.field final synthetic val$location:Lcom/amazon/kindle/panels/PanelLocation;

.field final synthetic val$state:Lcom/amazon/kindle/panels/PanelProviderState;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/ReaderPanelController;Lcom/amazon/kindle/panels/PanelProviderState;Lcom/amazon/kindle/panels/PanelLocation;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController$1;->this$0:Lcom/amazon/kindle/panels/ReaderPanelController;

    iput-object p2, p0, Lcom/amazon/kindle/panels/ReaderPanelController$1;->val$state:Lcom/amazon/kindle/panels/PanelProviderState;

    iput-object p3, p0, Lcom/amazon/kindle/panels/ReaderPanelController$1;->val$location:Lcom/amazon/kindle/panels/PanelLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController$1;->this$0:Lcom/amazon/kindle/panels/ReaderPanelController;

    iget-object v1, p0, Lcom/amazon/kindle/panels/ReaderPanelController$1;->val$state:Lcom/amazon/kindle/panels/PanelProviderState;

    iget-object v2, p0, Lcom/amazon/kindle/panels/ReaderPanelController$1;->val$location:Lcom/amazon/kindle/panels/PanelLocation;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/panels/ReaderPanelController;->bindPanelContent(Lcom/amazon/kindle/panels/PanelProviderState;Lcom/amazon/kindle/panels/PanelLocation;)V

    return-void
.end method
