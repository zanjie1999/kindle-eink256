.class public Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;
.super Ljava/lang/Object;
.source "FalkorDownloadEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final episode:Lcom/amazon/kindle/krx/content/IBook;

.field private final isSuccessful:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;Z)V
    .locals 1

    const-string v0, "episode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->episode:Lcom/amazon/kindle/krx/content/IBook;

    iput-boolean p2, p0, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->isSuccessful:Z

    return-void
.end method


# virtual methods
.method public final getEpisode()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->episode:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isSuccessful()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->isSuccessful:Z

    return v0
.end method
