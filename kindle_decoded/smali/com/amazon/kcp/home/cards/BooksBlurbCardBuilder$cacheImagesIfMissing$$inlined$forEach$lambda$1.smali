.class final Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "BooksBlurbCardBuilder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->cacheImagesIfMissing(Lcom/amazon/kcp/home/widget/BooksBlurbCard;Lcom/amazon/kindle/home/model/ThemedImageZone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBooksBlurbCardBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BooksBlurbCardBuilder.kt\ncom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n1#2:166\n*E\n"
.end annotation


# instance fields
.field final synthetic $imagePath:Ljava/lang/String;

.field final synthetic $imageUrl:Ljava/lang/String;

.field final synthetic $theme:Ljava/lang/String;

.field final synthetic $widget$inlined:Lcom/amazon/kcp/home/widget/BooksBlurbCard;

.field final synthetic this$0:Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;Lcom/amazon/kcp/home/widget/BooksBlurbCard;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$imagePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$theme:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;

    iput-object p5, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$widget$inlined:Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 106
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$imagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image already exists card="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$widget$inlined:Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    invoke-virtual {v2}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->getCardData()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$widget$inlined:Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    invoke-virtual {v2}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->getCardData()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$theme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0}, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->access$getImageProvider$p(Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;)Lcom/amazon/kcp/home/util/CardImageProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$imageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;->$imagePath:Ljava/lang/String;

    new-instance v4, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1$1;-><init>(Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/home/util/CardImageProvider;->getImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/util/ImageDownloadCallback;)V

    .line 127
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-void
.end method
