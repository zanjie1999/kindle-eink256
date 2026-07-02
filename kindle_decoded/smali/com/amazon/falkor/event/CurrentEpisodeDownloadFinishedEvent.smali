.class public final Lcom/amazon/falkor/event/CurrentEpisodeDownloadFinishedEvent;
.super Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;
.source "FalkorDownloadEvent.kt"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;Z)V
    .locals 1

    const-string v0, "episode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;Z)V

    return-void
.end method
