.class final Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper$listenForImageLoad$1;
.super Ljava/lang/Object;
.source "RecommendationsCoverImageHelper.kt"

# interfaces
.implements Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->listenForImageLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper$listenForImageLoad$1;->this$0:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyImage(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 69
    iget-object p2, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper$listenForImageLoad$1;->this$0:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-static {p2}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->access$getHandler$p(Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;)Lcom/amazon/readingactions/helpers/KUImageHandler;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/readingactions/helpers/KUImageHandler;->updateAndReloadBookImage(I)V

    return-void
.end method
