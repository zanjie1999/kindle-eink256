.class public Lcom/amazon/kcp/library/SeriesScreenletType;
.super Ljava/lang/Object;
.source "SeriesScreenlet.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/ScreenletType;


# instance fields
.field private final callback:Lcom/amazon/kcp/library/LibraryContextChangedCallback;

.field private final libraryContext:Lcom/amazon/kcp/library/LibraryContext;

.field private final stateManagerType:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)V
    .locals 1

    const-string/jumbo v0, "stateManagerType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/SeriesScreenletType;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    iput-object p2, p0, Lcom/amazon/kcp/library/SeriesScreenletType;->callback:Lcom/amazon/kcp/library/LibraryContextChangedCallback;

    iput-object p3, p0, Lcom/amazon/kcp/library/SeriesScreenletType;->stateManagerType:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/krx/ui/Screenlet;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/amazon/kcp/library/SeriesScreenlet;->Companion:Lcom/amazon/kcp/library/SeriesScreenlet$Companion;

    iget-object v1, p0, Lcom/amazon/kcp/library/SeriesScreenletType;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    iget-object v2, p0, Lcom/amazon/kcp/library/SeriesScreenletType;->callback:Lcom/amazon/kcp/library/LibraryContextChangedCallback;

    iget-object v3, p0, Lcom/amazon/kcp/library/SeriesScreenletType;->stateManagerType:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazon/kcp/library/SeriesScreenlet$Companion;->newInstance(Lcom/amazon/kindle/krx/ui/ScreenletContext;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kindle/krx/ui/Screenlet;

    move-result-object p1

    return-object p1
.end method
