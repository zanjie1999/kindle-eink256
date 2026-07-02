.class Lcom/amazon/kcp/library/SwipeRefreshHelper$4;
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

    .line 163
    iput-object p1, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$4;->this$0:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$4;->this$0:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->access$300(Lcom/amazon/kcp/library/SwipeRefreshHelper;ZLjava/lang/String;)V

    return-void
.end method
