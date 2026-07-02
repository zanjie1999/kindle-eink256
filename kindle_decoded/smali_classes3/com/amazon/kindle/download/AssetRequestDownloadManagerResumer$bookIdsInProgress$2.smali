.class final Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$bookIdsInProgress$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AssetRequestDownloadManagerResumer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;-><init>(Lcom/amazon/kindle/download/IDownloadSerializationHandler;Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$bookIdsInProgress$2;->this$0:Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$bookIdsInProgress$2;->invoke()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 89
    iget-object v2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$bookIdsInProgress$2;->this$0:Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;

    invoke-static {v2}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->access$getSerializationHandler$p(Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;)Lcom/amazon/kindle/download/IDownloadSerializationHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/download/IDownloadSerializationHandler;->deserialize()Ljava/util/Set;

    move-result-object v2

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 91
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookID set deserialization took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v2
.end method
