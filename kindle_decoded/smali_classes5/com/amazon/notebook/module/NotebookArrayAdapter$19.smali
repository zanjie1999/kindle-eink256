.class Lcom/amazon/notebook/module/NotebookArrayAdapter$19;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookArrayAdapter;->onDelete(Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILandroid/content/DialogInterface;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;)V
    .locals 0

    .line 1399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1402
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
