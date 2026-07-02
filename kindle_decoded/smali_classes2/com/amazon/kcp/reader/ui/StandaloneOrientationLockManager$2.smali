.class Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager$2;
.super Ljava/lang/Object;
.source "StandaloneOrientationLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 84
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->access$000()Lcom/amazon/kindle/tutorial/OrientationLockMovedTutorialProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    return-void
.end method
