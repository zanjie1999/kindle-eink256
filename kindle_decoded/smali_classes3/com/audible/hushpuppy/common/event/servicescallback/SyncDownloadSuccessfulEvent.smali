.class public Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;
.super Ljava/lang/Object;
.source "SyncDownloadSuccessfulEvent.java"


# instance fields
.field private acr:Ljava/lang/String;

.field private asin:Lcom/audible/mobile/domain/Asin;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;->acr:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;->asin:Lcom/audible/mobile/domain/Asin;

    return-void
.end method


# virtual methods
.method public final getAcr()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;->acr:Ljava/lang/String;

    return-object v0
.end method

.method public final getAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;->asin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method
