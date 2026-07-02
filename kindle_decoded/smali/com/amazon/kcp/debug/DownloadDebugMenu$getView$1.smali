.class final Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$1;
.super Ljava/lang/Object;
.source "DownloadDebugMenu.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DownloadDebugMenu;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$1;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$1;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;

    invoke-static {v0, p1}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->access$onDownloadAllBooks(Lcom/amazon/kcp/debug/DownloadDebugMenu;Landroid/view/View;)V

    return-void
.end method
