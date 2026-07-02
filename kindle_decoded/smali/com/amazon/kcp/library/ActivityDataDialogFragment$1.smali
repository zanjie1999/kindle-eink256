.class Lcom/amazon/kcp/library/ActivityDataDialogFragment$1;
.super Ljava/lang/Object;
.source "ActivityDataDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ActivityDataDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ActivityDataDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ActivityDataDialogFragment;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/library/ActivityDataDialogFragment$1;->this$0:Lcom/amazon/kcp/library/ActivityDataDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/amazon/kcp/library/ActivityDataDialogFragment$1;->this$0:Lcom/amazon/kcp/library/ActivityDataDialogFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/ActivityDataDialogFragment;->access$000(Lcom/amazon/kcp/library/ActivityDataDialogFragment;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/library/ActivityDataDialogFragment$1;->this$0:Lcom/amazon/kcp/library/ActivityDataDialogFragment;

    invoke-static {p2}, Lcom/amazon/kcp/library/ActivityDataDialogFragment;->access$000(Lcom/amazon/kcp/library/ActivityDataDialogFragment;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setAnnotationsSyncMode(Z)V

    .line 43
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result p1

    invoke-static {p1}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->sendAnnotationBackupSettingState(Z)V

    return-void
.end method
