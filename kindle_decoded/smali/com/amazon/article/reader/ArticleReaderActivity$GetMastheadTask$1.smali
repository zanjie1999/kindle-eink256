.class Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask$1;
.super Ljava/lang/Object;
.source "ArticleReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;->onPostExecute(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask$1;->this$1:Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;

    iput-object p2, p0, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask$1;->this$1:Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;

    invoke-static {v0}, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;->access$1100(Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
