.class final Lcom/amazon/kindle/tutorial/TutorialAlertDialogFragment$onCreateDialog$1;
.super Ljava/lang/Object;
.source "TutorialAlertDialogFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/TutorialAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/tutorial/TutorialAlertDialogFragment$onCreateDialog$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialAlertDialogFragment$onCreateDialog$1;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/TutorialAlertDialogFragment$onCreateDialog$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialAlertDialogFragment$onCreateDialog$1;->INSTANCE:Lcom/amazon/kindle/tutorial/TutorialAlertDialogFragment$onCreateDialog$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 46
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    return-void
.end method
