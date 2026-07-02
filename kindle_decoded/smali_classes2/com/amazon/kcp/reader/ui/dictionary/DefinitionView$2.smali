.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$2;
.super Ljava/lang/Object;
.source "DefinitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->updateOffscreenBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$2;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$2;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$000(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$2;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget v1, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->maximumDefinitionViewHeight:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$000(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;IZ)Z

    :cond_0
    return-void
.end method
