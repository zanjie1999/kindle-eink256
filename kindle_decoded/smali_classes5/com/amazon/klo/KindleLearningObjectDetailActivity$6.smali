.class Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;
.super Ljava/lang/Object;
.source "KindleLearningObjectDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

.field final synthetic val$thumbnailSrc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    iput-object p2, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;->val$thumbnailSrc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "Failed to load bitmap for Youtube video. "

    const/16 v1, 0x3e8

    :cond_0
    :goto_0
    const/16 v2, 0x1388

    if-ge v1, v2, :cond_2

    .line 475
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 479
    :cond_1
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;->val$thumbnailSrc:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 482
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 483
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    .line 485
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 486
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 487
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 488
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 492
    iget-object v3, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    new-instance v4, Lcom/amazon/klo/KindleLearningObjectDetailActivity$6$1;

    invoke-direct {v4, p0, v2}, Lcom/amazon/klo/KindleLearningObjectDetailActivity$6$1;-><init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 518
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v1

    .line 513
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    :cond_2
    return-void
.end method
