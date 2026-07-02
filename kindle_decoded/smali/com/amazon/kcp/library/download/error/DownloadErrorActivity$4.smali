.class Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$4;
.super Ljava/lang/Object;
.source "DownloadErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$4;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 278
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$4;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->clearBookErrorStateAndExit()V

    .line 279
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$4;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    iget p1, p1, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->stateReason:I

    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 281
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$4;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->access$200(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$4;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->access$300(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$4;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->access$300(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 284
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$4;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->error_license_limit_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "Cancel"

    .line 286
    invoke-static {p1, p2}, Lcom/amazon/kcp/util/fastmetrics/RecordLibraryDownloadCDEErrorMetrics;->recordCDEErrorMetrics(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
