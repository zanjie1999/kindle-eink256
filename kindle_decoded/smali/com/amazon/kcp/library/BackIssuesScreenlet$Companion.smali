.class public final Lcom/amazon/kcp/library/BackIssuesScreenlet$Companion;
.super Ljava/lang/Object;
.source "BackIssuesScreenlet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/BackIssuesScreenlet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/kcp/library/BackIssuesScreenlet$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/amazon/kindle/krx/ui/ScreenletContext;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;)Lcom/amazon/kindle/krx/ui/Screenlet;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "previousLibraryContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/amazon/kcp/library/BackIssuesScreenlet;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kcp/library/BackIssuesScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;)V

    return-object v0
.end method

.method public final newIntent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 2

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "parentAsin"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "previousContext"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bookId"

    .line 41
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance p1, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    new-instance p2, Lcom/amazon/kcp/library/BackIssuesScreenletType;

    invoke-direct {p2, p3, p4}, Lcom/amazon/kcp/library/BackIssuesScreenletType;-><init>(Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;)V

    invoke-direct {p1, p2, v1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletType;Landroid/os/Bundle;)V

    return-object p1
.end method
