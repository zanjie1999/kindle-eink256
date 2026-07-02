.class public final Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2$1;
.super Ljava/lang/Object;
.source "BooksBlurbCardBuilder.kt"

# interfaces
.implements Lcom/amazon/kcp/home/util/ImageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2$1;->this$0:Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownloadRequestComplete(Z)V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2$1;->this$0:Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;

    iget-object v0, v0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;->$widget$inlined:Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->getDescriptionImageZoneDownloaded$LibraryModule_release()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2$1;->this$0:Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;

    iget-object v1, v1, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;->$image:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->Companion:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;->notifyWidgetsChange$default(Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;ZILjava/lang/Object;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image downloaded: url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2$1;->this$0:Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;

    iget-object v1, v1, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;->$imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2$1;->this$0:Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;

    iget-object v1, v1, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;->$image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.amazon.kcp.home.cards.BooksBlurbCardBuilder"

    .line 154
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
