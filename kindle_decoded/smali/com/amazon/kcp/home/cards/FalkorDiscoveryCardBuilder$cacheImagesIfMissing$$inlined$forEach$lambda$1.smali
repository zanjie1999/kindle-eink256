.class final Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "FalkorDiscoveryCardBuilder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder;->cacheImagesIfMissing(Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;Lcom/amazon/kindle/home/model/ThemedImageZone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $imagePath:Ljava/lang/String;

.field final synthetic $imageUrl:Ljava/lang/String;

.field final synthetic $theme:Ljava/lang/String;

.field final synthetic $widget$inlined:Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;

.field final synthetic this$0:Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder;Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$imagePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$theme:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder;

    iput-object p5, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$widget$inlined:Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 84
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$imagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image already exists card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$widget$inlined:Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->getData()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$widget$inlined:Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->getThemeImageDownloaded$LibraryModule_release()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$theme:Ljava/lang/String;

    const-string/jumbo v2, "theme"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$widget$inlined:Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->getData()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$theme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder;

    invoke-static {v1}, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder;->access$getImageProvider$p(Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder;)Lcom/amazon/kcp/home/util/CardImageProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$imageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$imagePath:Ljava/lang/String;

    new-instance v4, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1$1;-><init>(Lcom/amazon/kcp/home/cards/FalkorDiscoveryCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/amazon/kcp/home/util/CardImageProvider;->getImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/util/ImageDownloadCallback;)V

    :goto_0
    return-void
.end method
