.class Lcom/audible/mobile/download/ContentTypeServiceResolver$1;
.super Ljava/util/HashMap;
.source "ContentTypeServiceResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/ContentTypeServiceResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/audible/mobile/download/ContentType;",
        "Ljava/lang/Class<",
        "+",
        "Lcom/audible/mobile/download/service/BaseDownloadService;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/download/ContentTypeServiceResolver;


# direct methods
.method constructor <init>(Lcom/audible/mobile/download/ContentTypeServiceResolver;)V
    .locals 1

    .line 25
    iput-object p1, p0, Lcom/audible/mobile/download/ContentTypeServiceResolver$1;->this$0:Lcom/audible/mobile/download/ContentTypeServiceResolver;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 28
    sget-object p1, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    const-class v0, Lcom/audible/mobile/download/service/AudiobookDownloadService;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object p1, Lcom/audible/mobile/download/ContentType;->CoverArt:Lcom/audible/mobile/download/ContentType;

    const-class v0, Lcom/audible/mobile/download/service/CoverArtDownloadService;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object p1, Lcom/audible/mobile/download/ContentType;->Library:Lcom/audible/mobile/download/ContentType;

    const-class v0, Lcom/audible/mobile/download/service/LibraryDownloadService;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object p1, Lcom/audible/mobile/download/ContentType;->PositionSync:Lcom/audible/mobile/download/ContentType;

    const-class v0, Lcom/audible/mobile/download/service/PositionSyncDownloadService;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object p1, Lcom/audible/mobile/download/ContentType;->SampleAudiobook:Lcom/audible/mobile/download/ContentType;

    const-class v0, Lcom/audible/mobile/download/service/SampleAudiobookDownloadService;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object p1, Lcom/audible/mobile/download/ContentType;->SamplePositionSync:Lcom/audible/mobile/download/ContentType;

    const-class v0, Lcom/audible/mobile/download/service/SamplePositionSyncDownloadService;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object p1, Lcom/audible/mobile/download/ContentType;->Sidecar:Lcom/audible/mobile/download/ContentType;

    const-class v0, Lcom/audible/mobile/download/service/SidecarDownloadService;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object p1, Lcom/audible/mobile/download/ContentType;->Similarity:Lcom/audible/mobile/download/ContentType;

    const-class v0, Lcom/audible/mobile/download/service/SimilarityDownloadService;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object p1, Lcom/audible/mobile/download/ContentType;->SimilarityCoverArt:Lcom/audible/mobile/download/ContentType;

    const-class v0, Lcom/audible/mobile/download/service/SimilarityCoverArtDownloadService;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object p1, Lcom/audible/mobile/download/ContentType;->Subscription:Lcom/audible/mobile/download/ContentType;

    const-class v0, Lcom/audible/mobile/download/service/SubscriptionDownloadService;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object p1, Lcom/audible/mobile/download/ContentType;->Isma:Lcom/audible/mobile/download/ContentType;

    const-class v0, Lcom/audible/mobile/download/service/ISMADownloadService;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
