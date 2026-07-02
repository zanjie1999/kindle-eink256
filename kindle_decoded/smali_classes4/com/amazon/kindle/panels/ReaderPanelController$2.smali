.class Lcom/amazon/kindle/panels/ReaderPanelController$2;
.super Ljava/lang/Object;
.source "ReaderPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/panels/ReaderPanelController;->clearSidePanelLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/panels/ReaderPanelController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/ReaderPanelController;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController$2;->this$0:Lcom/amazon/kindle/panels/ReaderPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController$2;->this$0:Lcom/amazon/kindle/panels/ReaderPanelController;

    invoke-virtual {v0}, Lcom/amazon/kindle/panels/ReaderPanelController;->clearSidePanelLayout()V

    return-void
.end method
