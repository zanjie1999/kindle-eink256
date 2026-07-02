.class Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler$1;
.super Ljava/lang/Object;
.source "FoldingSelectionButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;-><init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;

.field final synthetic val$this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler$1;->this$1:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler$1;->val$this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 442
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler$1;->this$1:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->access$100(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;)Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler$1;->this$1:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->onClick(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    return-void
.end method
