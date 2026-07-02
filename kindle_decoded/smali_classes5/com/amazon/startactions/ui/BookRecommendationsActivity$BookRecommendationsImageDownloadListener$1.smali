.class Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener$1;
.super Ljava/lang/Object;
.source "BookRecommendationsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;->onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;

.field final synthetic val$image:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener$1;->this$1:Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;

    iput-object p2, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener$1;->val$image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener$1;->this$1:Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;

    iget-object v1, v0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;->this$0:Lcom/amazon/startactions/ui/BookRecommendationsActivity;

    invoke-static {v0}, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;->access$000(Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener$1;->val$image:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener$1;->this$1:Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;

    invoke-static {v3}, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;->access$100(Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;)I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->access$200(Lcom/amazon/startactions/ui/BookRecommendationsActivity;Landroid/view/View;Landroid/graphics/Bitmap;I)V

    return-void
.end method
