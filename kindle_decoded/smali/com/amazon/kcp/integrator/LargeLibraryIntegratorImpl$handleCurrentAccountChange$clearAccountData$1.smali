.class final Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$handleCurrentAccountChange$clearAccountData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LargeLibraryIntegratorImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->handleCurrentAccountChange(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lcom/amazon/kcp/integrator/BatchRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$handleCurrentAccountChange$clearAccountData$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/amazon/kcp/integrator/BatchRequest;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$handleCurrentAccountChange$clearAccountData$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getFulfilledBatches$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$handleCurrentAccountChange$clearAccountData$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCollectingBatches$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/integrator/BatchRequest;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$handleCurrentAccountChange$clearAccountData$1;->invoke(Ljava/lang/String;)Lcom/amazon/kcp/integrator/BatchRequest;

    move-result-object p1

    return-object p1
.end method
