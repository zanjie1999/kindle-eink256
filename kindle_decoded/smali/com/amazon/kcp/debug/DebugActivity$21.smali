.class final Lcom/amazon/kcp/debug/DebugActivity$21;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->getCustomColorsAlertDialog(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/app/Activity;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$setNewSettingsRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$21;->val$setNewSettingsRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 907
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$21;->val$setNewSettingsRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
