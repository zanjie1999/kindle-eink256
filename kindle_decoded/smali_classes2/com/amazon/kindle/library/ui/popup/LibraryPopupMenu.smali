.class public Lcom/amazon/kindle/library/ui/popup/LibraryPopupMenu;
.super Lcom/amazon/kindle/library/ui/popup/PopupMenu;
.source "LibraryPopupMenu.java"

# interfaces
.implements Lcom/amazon/kindle/library/ui/popup/IPopup;


# instance fields
.field private final anchor:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/library/ui/popup/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 20
    iput-object p4, p0, Lcom/amazon/kindle/library/ui/popup/LibraryPopupMenu;->anchor:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected initPopupMenu(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryPopupMenu;->anchor:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method
