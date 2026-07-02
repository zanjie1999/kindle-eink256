.class public final Lcom/amazon/kindle/download/assets/AssetDownloadRequestUtilsKt;
.super Ljava/lang/Object;
.source "AssetDownloadRequestUtils.kt"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetDownloadRequestUtils"


# direct methods
.method public static final appendSupportedVoucherVersions(Ljava/net/URI;)Ljava/net/URI;
    .locals 11

    const-string v0, "uri"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const-class v0, Lcom/amazon/kindle/download/IReaderDownloadClient;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/IReaderDownloadClient;

    if-eqz v0, :cond_0

    const-string v1, "UniqueDiscovery.of(IRead\u2026\n        return uri\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {v0}, Lcom/amazon/kindle/download/IReaderDownloadClient;->getSupportedDrmVoucherVersions()Ljava/lang/Iterable;

    move-result-object v2

    const-string v0, "client.supportedDrmVoucherVersions"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const-string v3, ","

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "supportedVoucherVersions"

    .line 18
    invoke-static {p0, v1, v0}, Lcom/amazon/kindle/services/download/URI_ExtensionsKt;->appendingQueryParam(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "AssetDownloadRequestUtils"

    const-string v1, "Discovery of IReaderDownloadClient not found! Cannot set supported DRM voucher versions"

    .line 15
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
