.class Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;
.super Landroid/os/AsyncTask;
.source "ArticleReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/article/reader/ArticleReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMastheadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/net/URL;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/amazon/article/reader/ArticleReaderActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/article/reader/ArticleReaderActivity;Landroid/widget/ImageView;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 619
    iput-object p2, p0, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;)Landroid/widget/ImageView;
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/net/URL;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 625
    :try_start_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    .line 626
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 627
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 628
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 629
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 631
    invoke-static {}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$1000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Image not found in the given URL : %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 635
    invoke-static {}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Masthead Image Download Failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 615
    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;->doInBackground([Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    new-instance v1, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask$1;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 615
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
