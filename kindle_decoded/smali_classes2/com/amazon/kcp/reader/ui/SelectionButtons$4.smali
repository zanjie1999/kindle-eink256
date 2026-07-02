.class Lcom/amazon/kcp/reader/ui/SelectionButtons$4;
.super Ljava/lang/Object;
.source "SelectionButtons.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/SelectionButtons;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/SelectionButtons;

.field final synthetic val$swappedSelectionButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons$4;->this$0:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons$4;->val$swappedSelectionButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 431
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons$4;->val$swappedSelectionButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons$4;->this$0:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->onClick(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    const/4 p1, 0x1

    return p1
.end method
