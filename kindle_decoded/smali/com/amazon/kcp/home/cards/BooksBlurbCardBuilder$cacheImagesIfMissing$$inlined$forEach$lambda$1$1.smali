.class public final Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1$1;
.super Ljava/lang/Object;
.source "BooksBlurbCardBuilder.kt"

# interfaces
.implements Lcom/amazon/kcp/home/util/ImageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1$1;->this$0:Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownloadRequestComplete(Z)V
    .locals 4

    .line 119
    sget-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->Companion:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;->notifyWidgetsChange$default(Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;ZILjava/lang/Object;)V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image downloaded: url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1$1;->this$0:Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;

    iget-object v1, v1, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1$1;->this$0:Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;

    iget-object v1, v1, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$theme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.kcp.home.cards.BooksBlurbCardBuilder"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v2, "Utils.getFactory()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "BlBlurbHeaderImageError"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
