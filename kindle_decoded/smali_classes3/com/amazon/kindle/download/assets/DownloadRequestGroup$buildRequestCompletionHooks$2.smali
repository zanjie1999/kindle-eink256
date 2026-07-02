.class final Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadRequestGroup.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->buildRequestCompletionHooks(Lcom/amazon/kindle/services/download/IBookAsset;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/amazon/kindle/services/download/IBookAsset;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroup;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/assets/DownloadRequestGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$2;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$2;->invoke(Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$2;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->addAssets(Ljava/util/Collection;)Ljava/util/HashSet;

    const/4 p1, 0x1

    return p1
.end method
