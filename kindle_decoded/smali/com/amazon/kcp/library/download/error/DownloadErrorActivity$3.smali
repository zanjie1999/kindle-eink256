.class Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;
.super Ljava/lang/Object;
.source "DownloadErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getCDEDownloadListener()Landroid/content/DialogInterface$OnClickListener;
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

    .line 233
    iput-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 236
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    iget-object p1, p1, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->bookID:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 237
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 239
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/store/StoreManager;->getStoreContext(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/store/StoreManager;->getStoreIntentForAsin(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    const/16 p1, 0x3eb

    if-eqz p2, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    .line 241
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x20

    .line 243
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 244
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 250
    iget-object v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 251
    iget-object p2, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 245
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->setResult(I)V

    .line 246
    iget-object p2, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 247
    iget-object p2, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p2}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->access$100(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->openUrl(Ljava/lang/String;)V

    .line 254
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->setResult(I)V

    .line 255
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 258
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->access$200(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->access$300(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 259
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->access$300(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 261
    :cond_5
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->error_license_limit_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string p2, "Purchase"

    .line 263
    invoke-static {p1, p2}, Lcom/amazon/kcp/util/fastmetrics/RecordLibraryDownloadCDEErrorMetrics;->recordCDEErrorMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
