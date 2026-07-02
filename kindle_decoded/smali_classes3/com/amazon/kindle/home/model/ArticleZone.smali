.class public final Lcom/amazon/kindle/home/model/ArticleZone;
.super Lcom/amazon/kindle/home/model/HomeZone;
.source "HomeZones.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeZones.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeZones.kt\ncom/amazon/kindle/home/model/ArticleZone\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,190:1\n1162#2,2:191\n1190#2,4:193\n*E\n*S KotlinDebug\n*F\n+ 1 HomeZones.kt\ncom/amazon/kindle/home/model/ArticleZone\n*L\n131#1,2:191\n131#1,4:193\n*E\n"
.end annotation


# instance fields
.field private final articleImageAltText:Ljava/lang/String;

.field private final articleImageUrl:Ljava/lang/String;

.field private final intro:Ljava/lang/String;

.field private final publisherImageAltText:Ljava/lang/String;

.field private final publisherImageUrl:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "articleImageUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "articleImageAltText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherImageUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherImageAltText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intro"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 191
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 192
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 193
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 194
    move-object v2, v0

    check-cast v2, Lcom/amazon/kindle/home/model/HomeAction;

    .line 131
    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/amazon/kindle/home/model/HomeZone;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/amazon/kindle/home/model/ArticleZone;->articleImageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/home/model/ArticleZone;->articleImageAltText:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/home/model/ArticleZone;->publisherImageUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/home/model/ArticleZone;->publisherImageAltText:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kindle/home/model/ArticleZone;->title:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kindle/home/model/ArticleZone;->intro:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getArticleImageAltText()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/home/model/ArticleZone;->articleImageAltText:Ljava/lang/String;

    return-object v0
.end method

.method public final getArticleImageUrl()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/home/model/ArticleZone;->articleImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getIntro()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/home/model/ArticleZone;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublisherImageAltText()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/home/model/ArticleZone;->publisherImageAltText:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublisherImageUrl()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/home/model/ArticleZone;->publisherImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/home/model/ArticleZone;->title:Ljava/lang/String;

    return-object v0
.end method
