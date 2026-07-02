.class Lcom/amazon/kcp/library/SwipeRefreshHelper$3;
.super Ljava/lang/Object;
.source "SwipeRefreshHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/SwipeRefreshHelper;->onDeeplinkEvent(Lcom/amazon/kcp/application/DeeplinkEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/SwipeRefreshHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/SwipeRefreshHelper;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$3;->this$0:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$3;->this$0:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->access$400(Lcom/amazon/kcp/library/SwipeRefreshHelper;)V

    return-void
.end method
