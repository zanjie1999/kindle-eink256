.class Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$4;
.super Ljava/lang/Object;
.source "LibraryViewSortMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setDismissListener(Lcom/amazon/kindle/library/ui/popup/DismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/amazon/kindle/library/ui/popup/DismissListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;Lcom/amazon/kindle/library/ui/popup/DismissListener;)V
    .locals 0

    .line 219
    iput-object p2, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$4;->val$listener:Lcom/amazon/kindle/library/ui/popup/DismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$4;->val$listener:Lcom/amazon/kindle/library/ui/popup/DismissListener;

    invoke-interface {v0}, Lcom/amazon/kindle/library/ui/popup/DismissListener;->onDismiss()V

    return-void
.end method
