.class public final Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion;
.super Ljava/lang/Object;
.source "RemoveDownloadActionButton.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveDownloadActionButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveDownloadActionButton.kt\ncom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n1711#2,3:53\n1711#2,3:56\n*E\n*S KotlinDebug\n*F\n+ 1 RemoveDownloadActionButton.kt\ncom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion\n*L\n47#1,3:53\n48#1,3:56\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Lcom/amazon/kindle/krx/library/LibraryBookAction;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getBooks()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "context.books"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion;->validate(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;-><init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public validate(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "books"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/content/IBook;

    .line 47
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->isArchivable()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 56
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    .line 57
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/content/IBook;

    .line 48
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    const/4 p1, 0x1

    :goto_2
    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    return v1
.end method
