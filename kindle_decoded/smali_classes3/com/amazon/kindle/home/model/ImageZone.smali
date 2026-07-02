.class public final Lcom/amazon/kindle/home/model/ImageZone;
.super Lcom/amazon/kindle/home/model/HomeZone;
.source "HomeZones.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeZones.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeZones.kt\ncom/amazon/kindle/home/model/ImageZone\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,190:1\n1162#2,2:191\n1190#2,4:193\n*E\n*S KotlinDebug\n*F\n+ 1 HomeZones.kt\ncom/amazon/kindle/home/model/ImageZone\n*L\n41#1,2:191\n41#1,4:193\n*E\n"
.end annotation


# instance fields
.field private final imageAltText:Ljava/lang/String;

.field private final imageAsin:Ljava/lang/String;

.field private final imageAuthor:Ljava/lang/String;

.field private final imageTitle:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
            ")V"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageAltText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageAsin"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageTitle"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageAuthor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 41
    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/amazon/kindle/home/model/HomeZone;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/amazon/kindle/home/model/ImageZone;->imageAltText:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/home/model/ImageZone;->imageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/home/model/ImageZone;->imageAsin:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/home/model/ImageZone;->imageTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kindle/home/model/ImageZone;->imageAuthor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getImageAltText()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/home/model/ImageZone;->imageAltText:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageAsin()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/home/model/ImageZone;->imageAsin:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageAuthor()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/home/model/ImageZone;->imageAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageTitle()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/home/model/ImageZone;->imageTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/home/model/ImageZone;->imageUrl:Ljava/lang/String;

    return-object v0
.end method
