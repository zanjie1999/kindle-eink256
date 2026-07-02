.class final Lcom/amazon/kindle/download/manifest/ManifestRepo$get$$inlined$forEach$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ManifestRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/manifest/ManifestRepo;->get(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TRETURN_TYPE;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $continuation$inlined:Lkotlin/coroutines/Continuation;

.field final synthetic $handled$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $handler$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $params$inlined:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$$inlined$forEach$lambda$1;->$continuation$inlined:Lkotlin/coroutines/Continuation;

    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$$inlined$forEach$lambda$1;->$params$inlined:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$$inlined$forEach$lambda$1;->$handled$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$$inlined$forEach$lambda$1;->$handler$inlined:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$$inlined$forEach$lambda$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRETURN_TYPE;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$$inlined$forEach$lambda$1;->$handled$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$$inlined$forEach$lambda$1;->$handler$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
