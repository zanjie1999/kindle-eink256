.class Lcom/amazon/kcp/reader/ReaderActivity$23;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->setPanelsInteractive(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic val$interactive:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Z)V
    .locals 0

    .line 3696
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$23;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$23;->val$interactive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3699
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$23;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    if-eqz v0, :cond_0

    .line 3700
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$23;->val$interactive:Z

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->setInteractive(Z)V

    :cond_0
    return-void
.end method
