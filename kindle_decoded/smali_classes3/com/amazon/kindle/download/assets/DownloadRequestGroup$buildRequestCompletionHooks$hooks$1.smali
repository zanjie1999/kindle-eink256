.class final synthetic Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$hooks$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "DownloadRequestGroup.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->buildRequestCompletionHooks(Lcom/amazon/kindle/services/download/IBookAsset;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/services/download/IDownloadRequest;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/assets/ApnxDownloadHookProvider;)V
    .locals 7

    const-class v3, Lcom/amazon/kindle/download/assets/ApnxDownloadHookProvider;

    const/4 v1, 0x1

    const-string v4, "hook"

    const-string v5, "hook(Lcom/amazon/kindle/services/download/IDownloadRequest;)Z"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$hooks$1;->invoke(Lcom/amazon/kindle/services/download/IDownloadRequest;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/services/download/IDownloadRequest;)Z
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/download/assets/ApnxDownloadHookProvider;

    .line 537
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/assets/ApnxDownloadHookProvider;->hook(Lcom/amazon/kindle/services/download/IDownloadRequest;)Z

    move-result p1

    return p1
.end method
