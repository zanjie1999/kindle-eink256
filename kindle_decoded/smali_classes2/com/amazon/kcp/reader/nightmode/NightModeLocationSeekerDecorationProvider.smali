.class public final Lcom/amazon/kcp/reader/nightmode/NightModeLocationSeekerDecorationProvider;
.super Ljava/lang/Object;
.source "NightModeLocationSeekerDecorationProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field private final nightModeController:Lcom/amazon/kcp/reader/nightmode/NightModeController;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/nightmode/NightModeController;)V
    .locals 1

    const-string v0, "nightModeController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/nightmode/NightModeLocationSeekerDecorationProvider;->nightModeController:Lcom/amazon/kcp/reader/nightmode/NightModeController;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/nightmode/NightModeLocationSeekerDecorationProvider;->isChildrenMangaOrComic(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;

    iget-object p1, p0, Lcom/amazon/kcp/reader/nightmode/NightModeLocationSeekerDecorationProvider;->nightModeController:Lcom/amazon/kcp/reader/nightmode/NightModeController;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;-><init>(Lcom/amazon/kcp/reader/nightmode/NightModeController;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/nightmode/NightModeLocationSeekerDecorationProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/nightmode/NightModeLocationSeekerDecorationProvider;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public final isChildrenMangaOrComic(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kcp/reader/nightmode/NightModeLocationSeekerDecorationProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method
