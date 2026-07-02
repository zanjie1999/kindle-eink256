.class final Lcom/amazon/kcp/debug/DebugActivity$24;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 1021
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$24;->val$setNewSettingsRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1024
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$24;->val$setNewSettingsRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
