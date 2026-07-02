.class public final Lcom/amazon/kindle/displaymask/DisplayMaskDebugPageProvider;
.super Ljava/lang/Object;
.source "FoldableDebug.kt"

# interfaces
.implements Lcom/amazon/kcp/debug/IDebugMenuPageProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDebugMenuPages(Landroid/app/Activity;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;

    .line 26
    new-instance v1, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
