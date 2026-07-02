.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showInternetErrorDialog$primaryButtonOnClick$1;
.super Ljava/lang/Object;
.source "InAppNotificationsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->showInternetErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $dialog:Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showInternetErrorDialog$primaryButtonOnClick$1;->$dialog:Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 374
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showInternetErrorDialog$primaryButtonOnClick$1;->$dialog:Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->dismiss()V

    return-void
.end method
