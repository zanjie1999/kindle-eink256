.class public final Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;
.super Ljava/lang/Object;
.source "ImmutableLibraryDownloadRequestImpl.java"

# interfaces
.implements Lcom/audible/mobile/download/service/LibraryDownloadRequestData;


# instance fields
.field private final baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

.field private final contentType:Lcom/audible/mobile/download/ContentType;

.field private final downloadRequest:Lcom/audible/mobile/download/Request;

.field private final downloadUri:Landroid/net/Uri;

.field private final startId:I


# direct methods
.method public constructor <init>(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/download/service/BaseDownloadService;ILcom/audible/mobile/download/Request;Landroid/net/Uri;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "downloadType cannot be null."

    .line 29
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->contentType:Lcom/audible/mobile/download/ContentType;

    .line 31
    iput p3, p0, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->startId:I

    .line 32
    iput-object p4, p0, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->downloadRequest:Lcom/audible/mobile/download/Request;

    .line 33
    iput-object p2, p0, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    .line 34
    iput-object p5, p0, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->downloadUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getAdditionalPayload()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->downloadRequest:Lcom/audible/mobile/download/Request;

    invoke-virtual {v0}, Lcom/audible/mobile/download/Request;->getOptionalPayload()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->downloadRequest:Lcom/audible/mobile/download/Request;

    invoke-virtual {v0}, Lcom/audible/mobile/download/Request;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    return-object v0
.end method

.method public getBaseDownloadService()Lcom/audible/mobile/download/service/BaseDownloadService;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    return-object v0
.end method

.method public getCustomerId()Lcom/audible/mobile/domain/CustomerId;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->downloadRequest:Lcom/audible/mobile/download/Request;

    invoke-virtual {v0}, Lcom/audible/mobile/download/Request;->getCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadRequest()Lcom/audible/mobile/download/Request;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->downloadRequest:Lcom/audible/mobile/download/Request;

    return-object v0
.end method

.method public getDownloadUri()Landroid/net/Uri;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->downloadUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStartId()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->startId:I

    return v0
.end method

.method public getType()Lcom/audible/mobile/download/ContentType;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->contentType:Lcom/audible/mobile/download/ContentType;

    return-object v0
.end method

.method public bridge synthetic getType()Lcom/audible/mobile/downloader/factory/DownloadType;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;->getType()Lcom/audible/mobile/download/ContentType;

    move-result-object v0

    return-object v0
.end method
