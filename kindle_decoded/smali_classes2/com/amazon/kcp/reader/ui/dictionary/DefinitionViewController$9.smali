.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$9;
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

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 602
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
