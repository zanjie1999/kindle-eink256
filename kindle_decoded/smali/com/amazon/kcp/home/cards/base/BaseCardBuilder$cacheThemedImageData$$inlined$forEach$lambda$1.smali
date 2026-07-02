.class final Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "BaseCardBuilder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->cacheThemedImageData(Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/card/HomeCard;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseCardBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseCardBuilder.kt\ncom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,111:1\n1#2:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $data$inlined:Lcom/amazon/kindle/home/model/CardData;

.field final synthetic $imagePath:Ljava/lang/String;

.field final synthetic $imageUrl:Ljava/lang/String;

.field final synthetic $theme:Ljava/lang/String;

.field final synthetic $widget$inlined:Lcom/amazon/kindle/home/card/HomeCard;

.field final synthetic this$0:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;Lcom/amazon/kindle/home/card/HomeCard;Lcom/amazon/kindle/home/model/CardData;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$imagePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$theme:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$imageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;

    iput-object p5, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$widget$inlined:Lcom/amazon/kindle/home/card/HomeCard;

    iput-object p6, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$data$inlined:Lcom/amazon/kindle/home/model/CardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 76
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$imagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$widget$inlined:Lcom/amazon/kindle/home/card/HomeCard;

    iget-object v3, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$theme:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->onThemedImageReady(Lcom/amazon/kindle/home/card/HomeCard;Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    goto :goto_1

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$data$inlined:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$theme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->access$getImageProvider$p(Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;)Lcom/amazon/kcp/home/util/CardImageProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$imageUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$imagePath:Ljava/lang/String;

    new-instance v5, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1$1;

    invoke-direct {v5, v0, p0}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1$1;-><init>(Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;)V

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/amazon/kcp/home/util/CardImageProvider;->getImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/util/ImageDownloadCallback;)V

    .line 87
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-void
.end method
