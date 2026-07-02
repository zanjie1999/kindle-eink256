.class final Lcom/amazon/falkor/panels/EpisodeRowViewController$requestOpenEpisode$onSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EpisodeRowViewController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/panels/EpisodeRowViewController;->requestOpenEpisode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/panels/EpisodeRowViewController;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/panels/EpisodeRowViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController$requestOpenEpisode$onSuccess$1;->this$0:Lcom/amazon/falkor/panels/EpisodeRowViewController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/falkor/panels/EpisodeRowViewController$requestOpenEpisode$onSuccess$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController$requestOpenEpisode$onSuccess$1;->this$0:Lcom/amazon/falkor/panels/EpisodeRowViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->access$getAsin$p(Lcom/amazon/falkor/panels/EpisodeRowViewController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController$requestOpenEpisode$onSuccess$1;->this$0:Lcom/amazon/falkor/panels/EpisodeRowViewController;

    invoke-static {v2}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->access$isPaywalled$p(Lcom/amazon/falkor/panels/EpisodeRowViewController;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->access$onDownloadSuccessful(Lcom/amazon/falkor/panels/EpisodeRowViewController;Ljava/lang/String;Z)V

    return-void
.end method
