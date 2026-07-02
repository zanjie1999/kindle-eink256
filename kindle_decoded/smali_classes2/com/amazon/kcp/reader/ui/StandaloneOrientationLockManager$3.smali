.class Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager$3;
.super Ljava/lang/Object;
.source "StandaloneOrientationLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->setOrientationLockTemporarilyVisible(ZZ)V
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

    .line 130
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager$3;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager$3;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->access$100(Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;)V

    return-void
.end method
