.class public final Lcom/amazon/kcp/home/HomeRefreshControl$onRefresh$1;
.super Ljava/lang/Object;
.source "HomeRefreshControl.kt"

# interfaces
.implements Lcom/amazon/kcp/home/feeds/FeedResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/HomeRefreshControl;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/HomeRefreshControl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/HomeRefreshControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/amazon/kcp/home/HomeRefreshControl$onRefresh$1;->this$0:Lcom/amazon/kcp/home/HomeRefreshControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/kcp/home/models/voltron/SidekickResponse;)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/amazon/kcp/home/HomeRefreshControl$onRefresh$1;->this$0:Lcom/amazon/kcp/home/HomeRefreshControl;

    invoke-static {p1}, Lcom/amazon/kcp/home/HomeRefreshControl;->access$getContext$p(Lcom/amazon/kcp/home/HomeRefreshControl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/sync/SyncHelper;->initiateFullLibrarySync(Landroid/content/Context;)V

    return-void
.end method
