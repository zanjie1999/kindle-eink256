.class public final Lcom/amazon/kcp/library/LargeNarrativeProviderImpl;
.super Ljava/lang/Object;
.source "LargeNarrativeProviderImpl.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/LargeNarrativeProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 7

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateManagerType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v1, Lcom/amazon/kcp/library/NarrativeScreenlet;->Companion:Lcom/amazon/kcp/library/NarrativeScreenlet$Companion;

    move-object v4, p3

    check-cast v4, Lcom/amazon/kcp/library/LibraryContext;

    move-object v5, p4

    check-cast v5, Lcom/amazon/kcp/library/LibraryContextChangedCallback;

    move-object v6, p5

    check-cast v6, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/library/NarrativeScreenlet$Companion;->newIntent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    return-object p1
.end method
