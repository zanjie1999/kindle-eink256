.class Lcom/amazon/kcp/reader/ui/ComponentViewerHeader$1;
.super Ljava/lang/Object;
.source "ComponentViewerHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader$1;->this$0:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader$1;->this$0:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;->access$000(Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;)Lcom/amazon/kcp/reader/ImageZoomActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ImageZoomActivity;->onCloseButtonPressed()V

    return-void
.end method
