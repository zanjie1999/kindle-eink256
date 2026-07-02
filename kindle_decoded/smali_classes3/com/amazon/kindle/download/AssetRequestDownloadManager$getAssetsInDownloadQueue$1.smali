.class final Lcom/amazon/kindle/download/AssetRequestDownloadManager$getAssetsInDownloadQueue$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AssetRequestDownloadManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/AssetRequestDownloadManager;->getAssetsInDownloadQueue()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/download/DownloadRequestTask<",
        "*>;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/download/AssetRequestDownloadManager$getAssetsInDownloadQueue$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/download/AssetRequestDownloadManager$getAssetsInDownloadQueue$1;

    invoke-direct {v0}, Lcom/amazon/kindle/download/AssetRequestDownloadManager$getAssetsInDownloadQueue$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManager$getAssetsInDownloadQueue$1;->INSTANCE:Lcom/amazon/kindle/download/AssetRequestDownloadManager$getAssetsInDownloadQueue$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lcom/amazon/kindle/download/DownloadRequestTask;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManager$getAssetsInDownloadQueue$1;->invoke(Lcom/amazon/kindle/download/DownloadRequestTask;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/download/DownloadRequestTask;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    const-string v0, "it.request.bookAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
