.class final Lcom/amazon/krf/platform/KRIFPageManager$getIndexedOffsetPairAdjacentToPageModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KRIFPageManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRIFPageManager;->getIndexedOffsetPairAdjacentToPageModel(Lcom/amazon/krf/platform/PageModel;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $model:Lcom/amazon/krf/platform/PageModel;

.field final synthetic this$0:Lcom/amazon/krf/platform/KRIFPageManager;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/PageModel;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFPageManager$getIndexedOffsetPairAdjacentToPageModel$1;->this$0:Lcom/amazon/krf/platform/KRIFPageManager;

    iput-object p2, p0, Lcom/amazon/krf/platform/KRIFPageManager$getIndexedOffsetPairAdjacentToPageModel$1;->$model:Lcom/amazon/krf/platform/PageModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFPageManager$getIndexedOffsetPairAdjacentToPageModel$1;->this$0:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRIFPageManager;->access$getPageManager$p(Lcom/amazon/krf/platform/KRIFPageManager;)Lcom/amazon/krf/platform/PageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFPageManager$getIndexedOffsetPairAdjacentToPageModel$1;->$model:Lcom/amazon/krf/platform/PageModel;

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/PageManager;->getIndexedOffsetPairAdjacentToPageModel(Lcom/amazon/krf/platform/PageModel;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRIFPageManager$getIndexedOffsetPairAdjacentToPageModel$1;->invoke()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
