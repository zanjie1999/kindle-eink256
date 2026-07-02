.class Lcom/amazon/kcp/cover/BadgeableCover$2;
.super Ljava/lang/Object;
.source "BadgeableCover.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/BadgeableCover;->handleBadgeBinding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/BadgeableCover;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/BadgeableCover;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover$2;->this$0:Lcom/amazon/kcp/cover/BadgeableCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 703
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover$2;->this$0:Lcom/amazon/kcp/cover/BadgeableCover;

    iget-object p1, p1, Lcom/amazon/kcp/cover/BadgeableCover;->bindBadgesFinishedCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/callback/ICallback;

    const/4 v1, 0x0

    .line 704
    invoke-interface {v0, v1}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    goto :goto_0

    .line 706
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover$2;->this$0:Lcom/amazon/kcp/cover/BadgeableCover;

    iget-object p1, p1, Lcom/amazon/kcp/cover/BadgeableCover;->bindBadgesFinishedCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 708
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover$2;->this$0:Lcom/amazon/kcp/cover/BadgeableCover;

    iget-boolean v0, p1, Lcom/amazon/kcp/cover/BadgeableCover;->rebindBadges:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 709
    iput-boolean v0, p1, Lcom/amazon/kcp/cover/BadgeableCover;->rebindBadges:Z

    .line 710
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/BadgeableCover;->bindBadges()V

    .line 712
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover$2;->this$0:Lcom/amazon/kcp/cover/BadgeableCover;

    invoke-static {p1}, Lcom/amazon/kcp/cover/BadgeableCover;->access$000(Lcom/amazon/kcp/cover/BadgeableCover;)V

    return-void
.end method
