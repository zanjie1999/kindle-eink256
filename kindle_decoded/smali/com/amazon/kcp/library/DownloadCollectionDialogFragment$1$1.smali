.class Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1$1;
.super Ljava/lang/Object;
.source "DownloadCollectionDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1$1;->this$1:Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1$1;->this$1:Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1;->this$0:Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->downloadCollections()V

    return-void
.end method
