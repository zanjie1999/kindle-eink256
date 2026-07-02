.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$7;
.super Ljava/lang/Object;
.source "DefinitionViewController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getAlertDialogBuilderForDictionarySelect([Ljava/lang/String;ILjava/util/ArrayList;)Landroidx/appcompat/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V
    .locals 0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-gez p2, :cond_0

    return-void

    .line 514
    :cond_0
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 p2, -0x1

    .line 515
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 516
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 517
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method
