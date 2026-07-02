.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$5;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

.field final synthetic val$currentPage:Lcom/amazon/nwstd/replica/IReplicaPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Lcom/amazon/nwstd/replica/IReplicaPage;)V
    .locals 0

    .line 1067
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$5;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iput-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$5;->val$currentPage:Lcom/amazon/nwstd/replica/IReplicaPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postFirstDraw(Landroid/view/View;)Z
    .locals 1

    .line 1070
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1071
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$5;->val$currentPage:Lcom/amazon/nwstd/replica/IReplicaPage;

    invoke-interface {p1}, Lcom/amazon/nwstd/replica/IReplicaPage;->hasFinishedLoading()Z

    move-result p1

    const-string v0, "First draw occurred before current page has finished loading (see NWSTD-3864)!"

    invoke-static {p1, v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 1074
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$5;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1075
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
