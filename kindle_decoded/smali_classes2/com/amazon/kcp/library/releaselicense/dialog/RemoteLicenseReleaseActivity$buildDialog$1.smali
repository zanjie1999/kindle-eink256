.class final Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$buildDialog$1;
.super Ljava/lang/Object;
.source "RemoteLicenseReleaseActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->buildDialog$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $builder:Landroidx/appcompat/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$buildDialog$1;->$builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$buildDialog$1;->$builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
