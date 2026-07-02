.class final Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$sam$java_lang_Runnable$0;
.super Ljava/lang/Object;
.source "ManifestDownloadJob.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic function:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$sam$java_lang_Runnable$0;->function:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$sam$java_lang_Runnable$0;->function:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "invoke(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
