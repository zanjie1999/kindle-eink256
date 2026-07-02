.class final Lcom/amazon/kcp/integrator/BookDataHelper$categorySetForBookData$applyComicCategories$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BookDataHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/BookDataHelper;->categorySetForBookData(Lcom/amazon/kindle/content/ContentMetadata;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $bookData:Lcom/amazon/kindle/content/ContentMetadata;

.field final synthetic $result:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/BookDataHelper$categorySetForBookData$applyComicCategories$1;->$bookData:Lcom/amazon/kindle/content/ContentMetadata;

    iput-object p2, p0, Lcom/amazon/kcp/integrator/BookDataHelper$categorySetForBookData$applyComicCategories$1;->$result:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/amazon/kcp/integrator/BookDataHelper$categorySetForBookData$applyComicCategories$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 146
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/BookDataHelper$categorySetForBookData$applyComicCategories$1;->$bookData:Lcom/amazon/kindle/content/ContentMetadata;

    const-string v2, "MANGA"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/integrator/BookDataHelper;->access$hasKindleContentTag(Lcom/amazon/kcp/integrator/BookDataHelper;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/integrator/BookDataHelper$categorySetForBookData$applyComicCategories$1;->$result:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/BookDataHelper$categorySetForBookData$applyComicCategories$1;->$bookData:Lcom/amazon/kindle/content/ContentMetadata;

    const-string v2, "COMICS"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/integrator/BookDataHelper;->access$hasKindleContentTag(Lcom/amazon/kcp/integrator/BookDataHelper;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/integrator/BookDataHelper$categorySetForBookData$applyComicCategories$1;->$bookData:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Comixology"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/integrator/BookDataHelper$categorySetForBookData$applyComicCategories$1;->$result:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
