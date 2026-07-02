.class Lcom/amazon/kcp/search/BaseBookSearchController$1;
.super Ljava/lang/Object;
.source "BaseBookSearchController.java"

# interfaces
.implements Lcom/amazon/kindle/services/download/IStatusTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/BaseBookSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/BaseBookSearchController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/BaseBookSearchController;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController$1;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportCurrentProgress(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController$1;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-static {v0, p1, p2}, Lcom/amazon/kcp/search/BaseBookSearchController;->access$402(Lcom/amazon/kcp/search/BaseBookSearchController;J)J

    .line 62
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController$1;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-static {p1}, Lcom/amazon/kcp/search/BaseBookSearchController;->access$500(Lcom/amazon/kcp/search/BaseBookSearchController;)V

    return-void
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController$1;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-static {v0, p1, p2}, Lcom/amazon/kcp/search/BaseBookSearchController;->access$300(Lcom/amazon/kcp/search/BaseBookSearchController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController$1;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-static {v0}, Lcom/amazon/kcp/search/BaseBookSearchController;->access$200(Lcom/amazon/kcp/search/BaseBookSearchController;)V

    return-void
.end method

.method public setMaxProgress(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController$1;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-static {v0, p1, p2}, Lcom/amazon/kcp/search/BaseBookSearchController;->access$002(Lcom/amazon/kcp/search/BaseBookSearchController;J)J

    .line 46
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController$1;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-static {p1}, Lcom/amazon/kcp/search/BaseBookSearchController;->access$100(Lcom/amazon/kcp/search/BaseBookSearchController;)V

    return-void
.end method
