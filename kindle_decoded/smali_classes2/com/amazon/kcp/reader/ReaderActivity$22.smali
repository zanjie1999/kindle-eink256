.class Lcom/amazon/kcp/reader/ReaderActivity$22;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->setExternalScreenStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic val$hasExternalScreen:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Z)V
    .locals 0

    .line 3686
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$22;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$22;->val$hasExternalScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3689
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$22;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$22;->val$hasExternalScreen:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;->OPENED:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;->CLOSED:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    :goto_0
    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$1702(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;)Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    return-void
.end method
