.class Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$2;
.super Ljava/util/TimerTask;
.source "PostAuthScriptPageListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->forceCloseLoadingActivityWithDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$2;->this$0:Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 93
    invoke-static {}, Lcom/amazon/kindle/FTUELoadingActivity;->forceClose()V

    return-void
.end method
