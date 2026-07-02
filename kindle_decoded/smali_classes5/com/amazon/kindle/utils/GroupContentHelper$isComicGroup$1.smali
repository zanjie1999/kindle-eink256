.class final Lcom/amazon/kindle/utils/GroupContentHelper$isComicGroup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GroupContentHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/utils/GroupContentHelper;->isComicGroup(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupContentHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupContentHelper.kt\ncom/amazon/kindle/utils/GroupContentHelper$isComicGroup$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"
.end annotation


# instance fields
.field final synthetic $bookId:Lcom/amazon/kindle/model/content/IBookID;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/utils/GroupContentHelper$isComicGroup$1;->$bookId:Lcom/amazon/kindle/model/content/IBookID;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 4

    .line 20
    sget-object v0, Lcom/amazon/kindle/utils/GroupContentHelper;->INSTANCE:Lcom/amazon/kindle/utils/GroupContentHelper;

    invoke-virtual {v0}, Lcom/amazon/kindle/utils/GroupContentHelper;->getGroupService$KindleReaderLibrary_release()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/utils/GroupContentHelper$isComicGroup$1;->$bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/content/IGroupService;->isGroupComics(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/utils/GroupContentHelper;->INSTANCE:Lcom/amazon/kindle/utils/GroupContentHelper;

    invoke-virtual {v1}, Lcom/amazon/kindle/utils/GroupContentHelper;->getComicCache()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/utils/GroupContentHelper$isComicGroup$1;->$bookId:Lcom/amazon/kindle/model/content/IBookID;

    const-string v3, "it"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/kindle/utils/GroupContentHelper$isComicGroup$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
