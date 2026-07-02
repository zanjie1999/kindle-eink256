.class final Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider$get$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "MentionedInThisBookWidgetItemProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMentionedInThisBookWidgetItemProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MentionedInThisBookWidgetItemProvider.kt\ncom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider$get$1$1\n*L\n1#1,90:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $it:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic this$0:Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider$get$$inlined$let$lambda$1;->$it:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p2, p0, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider$get$$inlined$let$lambda$1;->this$0:Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider$get$$inlined$let$lambda$1;->$it:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/util/SidecarCacheManager;->getSidecar(Ljava/lang/String;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider$get$$inlined$let$lambda$1;->$it:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->parseAndCacheSidecar(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 38
    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/Sidecar;->widgetIDToWidget:Ljava/util/Map;

    const-string v1, "leftNavCitationsFeaturedList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    instance-of v1, v0, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider$get$$inlined$let$lambda$1;->this$0:Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;

    invoke-static {v1}, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;->access$getSdk$p(Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sdk.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$dimen;->featuredbooks_image_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 42
    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 43
    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/startactions/storage/ImageDownloadManager;->prepare(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method
