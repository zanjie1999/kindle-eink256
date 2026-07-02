.class final Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/redding/DocumentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScreenDimRunnable"
.end annotation


# instance fields
.field root:Landroid/view/Window;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;->root:Landroid/view/Window;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/redding/DocumentActivity$1;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;->root:Landroid/view/Window;

    if-eqz v0, :cond_0

    const/16 v1, 0x80

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 94
    invoke-static {}, Lcom/amazon/kcp/redding/DocumentActivity;->access$000()Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/redding/DocumentActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unable to remove FLAG_KEEP_SCREEN_ON: root view is null!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
