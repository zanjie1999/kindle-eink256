.class public final Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDebugMenu;
.super Ljava/lang/Object;
.source "HushpuppyUpsellDetector.kt"

# interfaces
.implements Lcom/amazon/kcp/debug/IDebugMenuPageProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDebugMenuPages(Landroid/app/Activity;)Ljava/util/Collection;
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDebugMenu;->getDebugMenuPages(Landroid/app/Activity;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDebugMenuPages(Landroid/app/Activity;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;

    .line 247
    new-instance v1, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
