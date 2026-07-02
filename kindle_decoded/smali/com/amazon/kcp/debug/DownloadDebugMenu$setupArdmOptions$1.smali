.class final Lcom/amazon/kcp/debug/DownloadDebugMenu$setupArdmOptions$1;
.super Ljava/lang/Object;
.source "DownloadDebugMenu.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DownloadDebugMenu;->setupArdmOptions(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $ardm:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

.field final synthetic $ardmThreadCountText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;Landroid/widget/EditText;Lcom/amazon/kindle/services/download/IReaderDownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupArdmOptions$1;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupArdmOptions$1;->$ardmThreadCountText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupArdmOptions$1;->$ardm:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupArdmOptions$1;->$ardmThreadCountText:Landroid/widget/EditText;

    const-string v0, "ardmThreadCountText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupArdmOptions$1;->$ardm:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    check-cast v0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->getParallelDownloadCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New size of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is the same as the existing size. Ignoring."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupArdmOptions$1;->$ardm:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    check-cast v0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->setParallelDownloadCount(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupArdmOptions$1;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;

    invoke-static {v0}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->access$getContext$p(Lcom/amazon/kcp/debug/DownloadDebugMenu;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->setAssetRequestDownloadManagerThreadCount(Landroid/content/Context;I)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set the new thread pool size to be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Please wait up to a minute for the pool to idle"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ERROR: download manager rejected the new thread size"

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupArdmOptions$1;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;

    invoke-static {v0}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->access$getContext$p(Lcom/amazon/kcp/debug/DownloadDebugMenu;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
