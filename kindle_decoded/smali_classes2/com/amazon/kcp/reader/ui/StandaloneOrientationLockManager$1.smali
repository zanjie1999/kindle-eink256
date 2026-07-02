.class Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager$1;
.super Ljava/lang/Object;
.source "StandaloneOrientationLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager$1;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager$1;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->setOrientationLockTemporarilyVisible(ZZ)V

    return-void
.end method
