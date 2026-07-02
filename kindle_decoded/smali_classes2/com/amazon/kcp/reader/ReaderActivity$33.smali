.class Lcom/amazon/kcp/reader/ReaderActivity$33;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->onRefreshLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 5124
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$33;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 5127
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$33;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$3002(Lcom/amazon/kcp/reader/ReaderActivity;Z)Z

    .line 5128
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$33;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->onSearchEnded()V

    return-void
.end method
