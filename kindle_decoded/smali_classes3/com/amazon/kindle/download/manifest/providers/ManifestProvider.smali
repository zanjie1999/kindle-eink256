.class public interface abstract Lcom/amazon/kindle/download/manifest/providers/ManifestProvider;
.super Ljava/lang/Object;
.source "ManifestProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/manifest/providers/ManifestProvider$Priorities;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RETURN_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/amazon/kindle/download/manifest/providers/ManifestProvider$Priorities;->$$INSTANCE:Lcom/amazon/kindle/download/manifest/providers/ManifestProvider$Priorities;

    return-void
.end method


# virtual methods
.method public abstract fetch(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Lkotlin/jvm/functions/Function1<",
            "-TRETURN_TYPE;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/download/ManifestProviderException;
        }
    .end annotation
.end method

.method public abstract getPriority()I
.end method
