.class final Lcom/amazon/krf/platform/KRIFPageManager$getPageModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KRIFPageManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRIFPageManager;->getPageModel(Lcom/amazon/krf/platform/PageModel;I)Lcom/amazon/krf/platform/PageModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/krf/platform/PageModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $basePage:Lcom/amazon/krf/platform/PageModel;

.field final synthetic $offset:I

.field final synthetic this$0:Lcom/amazon/krf/platform/KRIFPageManager;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/PageModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFPageManager$getPageModel$2;->this$0:Lcom/amazon/krf/platform/KRIFPageManager;

    iput-object p2, p0, Lcom/amazon/krf/platform/KRIFPageManager$getPageModel$2;->$basePage:Lcom/amazon/krf/platform/PageModel;

    iput p3, p0, Lcom/amazon/krf/platform/KRIFPageManager$getPageModel$2;->$offset:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/krf/platform/PageModel;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFPageManager$getPageModel$2;->this$0:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRIFPageManager;->access$getPageManager$p(Lcom/amazon/krf/platform/KRIFPageManager;)Lcom/amazon/krf/platform/PageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFPageManager$getPageModel$2;->$basePage:Lcom/amazon/krf/platform/PageModel;

    iget v2, p0, Lcom/amazon/krf/platform/KRIFPageManager$getPageModel$2;->$offset:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/krf/platform/PageManager;->getPageModel(Lcom/amazon/krf/platform/PageModel;I)Lcom/amazon/krf/platform/PageModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRIFPageManager$getPageModel$2;->invoke()Lcom/amazon/krf/platform/PageModel;

    move-result-object v0

    return-object v0
.end method
