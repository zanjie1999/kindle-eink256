.class public final Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$Success;
.super Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult;
.source "Mobi7LunaMultimediaManifestDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field private final multimediaAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;)V"
        }
    .end annotation

    const-string v0, "multimediaAssets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$Success;->multimediaAssets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getMultimediaAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$Success;->multimediaAssets:Ljava/util/List;

    return-object v0
.end method
