.class Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$7;
.super Ljava/lang/Object;
.source "DoubletimeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->showAlertDialog(Landroid/content/Context;IIIIZLandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;Landroid/app/AlertDialog;)V
    .locals 0

    .line 370
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
