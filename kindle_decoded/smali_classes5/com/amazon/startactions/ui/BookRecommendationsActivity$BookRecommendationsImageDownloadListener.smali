.class Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;
.super Ljava/lang/Object;
.source "BookRecommendationsActivity.java"

# interfaces
.implements Lcom/amazon/ea/images/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/BookRecommendationsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookRecommendationsImageDownloadListener"
.end annotation


# instance fields
.field private final parentView:Landroid/view/View;

.field private final recIndex:I

.field final synthetic this$0:Lcom/amazon/startactions/ui/BookRecommendationsActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/BookRecommendationsActivity;Landroid/view/View;I)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;->this$0:Lcom/amazon/startactions/ui/BookRecommendationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p2, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;->parentView:Landroid/view/View;

    .line 292
    iput p3, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;->recIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;)Landroid/view/View;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;->parentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;)I
    .locals 0

    .line 286
    iget p0, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;->recIndex:I

    return p0
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 298
    iget-object p1, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;->this$0:Lcom/amazon/startactions/ui/BookRecommendationsActivity;

    new-instance v0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener$1;-><init>(Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
