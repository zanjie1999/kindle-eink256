.class Lcom/audible/hushpuppy/controller/NavigationListener$1;
.super Ljava/lang/Object;
.source "NavigationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/NavigationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/NavigationListener;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/audible/hushpuppy/controller/NavigationListener;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Turning off the ignore playback position change flag"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/audible/hushpuppy/controller/NavigationListener;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
