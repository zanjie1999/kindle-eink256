.class Lcom/amazon/kcp/cover/BadgeableCover$3;
.super Ljava/lang/Object;
.source "BadgeableCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/BadgeableCover;->onBookTransferFinishEvent(Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferFinishEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/BadgeableCover;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/BadgeableCover;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover$3;->this$0:Lcom/amazon/kcp/cover/BadgeableCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover$3;->this$0:Lcom/amazon/kcp/cover/BadgeableCover;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/BadgeableCover;->updateBadges()V

    return-void
.end method
