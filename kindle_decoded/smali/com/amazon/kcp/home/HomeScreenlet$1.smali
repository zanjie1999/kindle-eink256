.class Lcom/amazon/kcp/home/HomeScreenlet$1;
.super Lcom/amazon/kcp/home/HomeRefreshControl$ListenerAdapter;
.source "HomeScreenlet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/HomeScreenlet;->onCreate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/HomeScreenlet;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/HomeScreenlet;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/kcp/home/HomeScreenlet$1;->this$0:Lcom/amazon/kcp/home/HomeScreenlet;

    invoke-direct {p0}, Lcom/amazon/kcp/home/HomeRefreshControl$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterRefresh()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/home/HomeScreenlet$1;->this$0:Lcom/amazon/kcp/home/HomeScreenlet;

    invoke-static {v0}, Lcom/amazon/kcp/home/HomeScreenlet;->access$000(Lcom/amazon/kcp/home/HomeScreenlet;)Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->refresh()V

    return-void
.end method
