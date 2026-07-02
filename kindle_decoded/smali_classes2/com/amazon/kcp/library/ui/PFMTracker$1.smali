.class Lcom/amazon/kcp/library/ui/PFMTracker$1;
.super Ljava/lang/Object;
.source "PFMTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ui/PFMTracker;->onTokenFetchedEvent(Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/PFMTracker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/PFMTracker;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/PFMTracker$1;->this$0:Lcom/amazon/kcp/library/ui/PFMTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/PFMTracker$1;->this$0:Lcom/amazon/kcp/library/ui/PFMTracker;

    invoke-static {v0}, Lcom/amazon/kcp/library/ui/PFMTracker;->access$000(Lcom/amazon/kcp/library/ui/PFMTracker;)V

    return-void
.end method
