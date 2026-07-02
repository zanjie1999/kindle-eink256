.class public final Lcom/amazon/kcp/library/BackIssuesScreenletType;
.super Ljava/lang/Object;
.source "BackIssuesScreenlet.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/ScreenletType;


# instance fields
.field private final callback:Lcom/amazon/kcp/library/LibraryContextChangedCallback;

.field private final previousLibraryContext:Lcom/amazon/kcp/library/LibraryContext;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;)V
    .locals 1

    const-string/jumbo v0, "previousLibraryContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/BackIssuesScreenletType;->previousLibraryContext:Lcom/amazon/kcp/library/LibraryContext;

    iput-object p2, p0, Lcom/amazon/kcp/library/BackIssuesScreenletType;->callback:Lcom/amazon/kcp/library/LibraryContextChangedCallback;

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/krx/ui/Screenlet;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/amazon/kcp/library/BackIssuesScreenlet;->Companion:Lcom/amazon/kcp/library/BackIssuesScreenlet$Companion;

    iget-object v1, p0, Lcom/amazon/kcp/library/BackIssuesScreenletType;->previousLibraryContext:Lcom/amazon/kcp/library/LibraryContext;

    iget-object v2, p0, Lcom/amazon/kcp/library/BackIssuesScreenletType;->callback:Lcom/amazon/kcp/library/LibraryContextChangedCallback;

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/kcp/library/BackIssuesScreenlet$Companion;->newInstance(Lcom/amazon/kindle/krx/ui/ScreenletContext;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;)Lcom/amazon/kindle/krx/ui/Screenlet;

    move-result-object p1

    return-object p1
.end method
