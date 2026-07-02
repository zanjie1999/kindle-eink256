.class public final Lcom/amazon/kcp/store/StorePathProvider$DefaultImpls;
.super Ljava/lang/Object;
.source "StorePathProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StorePathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getSeriesDetailPagePath(Lcom/amazon/kcp/store/StorePathProvider;Ljava/util/Map;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/store/StorePathProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/store/StoreUrlBuilder$Action;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation

    const-string v0, "actionParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p0, p1, p2, p3}, Lcom/amazon/kcp/store/StorePathProvider;->getDetailPagePath(Ljava/util/Map;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method
