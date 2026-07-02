.class public final Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$Companion;
.super Ljava/lang/Object;
.source "RemoveFromLibraryActionButton.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Lcom/amazon/kindle/krx/library/LibraryBookAction;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getBooks()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "context.books"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$Companion;->validate(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;-><init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public validate(Ljava/util/Collection;)Z
    .locals 2
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

    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p1}, Lcom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt;->areMultipleBooksRemovable(Ljava/util/Collection;)Z

    move-result p1

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {p1}, Lcom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt;->isSingleBookRemovable(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
