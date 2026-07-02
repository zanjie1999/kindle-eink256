.class Lcom/amazon/kcp/reader/UserGotoDialogBuilder$1;
.super Ljava/lang/Object;
.source "UserGotoDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->build(Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$controller:Lcom/amazon/kcp/reader/UserGotoDialogController;

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$type:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/UserGotoDialogBuilder;Landroidx/appcompat/app/AlertDialog;Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;Lcom/amazon/kcp/reader/UserGotoDialogController;)V
    .locals 0

    .line 203
    iput-object p2, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$1;->val$type:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    iput-object p4, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$1;->val$controller:Lcom/amazon/kcp/reader/UserGotoDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 206
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    const/16 p1, 0x42

    if-ne p2, p1, :cond_2

    .line 207
    iget-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 208
    sget-object p1, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$2;->$SwitchMap$com$amazon$kcp$reader$UserGotoDialogBuilder$GoToDialogType:[I

    iget-object p2, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$1;->val$type:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, p3, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$1;->val$controller:Lcom/amazon/kcp/reader/UserGotoDialogController;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/UserGotoDialogController;->gotoEnteredPage()V

    goto :goto_0

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$1;->val$controller:Lcom/amazon/kcp/reader/UserGotoDialogController;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/UserGotoDialogController;->gotoEnteredLocation()V

    :goto_0
    return p3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
