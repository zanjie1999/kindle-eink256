.class public Lcom/audible/mobile/downloader/NetworkErrorException;
.super Ljava/lang/Exception;
.source "NetworkErrorException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final amazonRequestIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final error:Lcom/audible/mobile/downloader/NetworkError;

.field private final userErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/String;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/NetworkError;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Lcom/audible/mobile/downloader/NetworkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p4, "The amazonRequestIds list cannot be null, please use an empty list instead."

    .line 54
    invoke-static {p3, p4}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lcom/audible/mobile/downloader/NetworkErrorException;->error:Lcom/audible/mobile/downloader/NetworkError;

    .line 56
    iput-object p2, p0, Lcom/audible/mobile/downloader/NetworkErrorException;->userErrorMessage:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/audible/mobile/downloader/NetworkErrorException;->amazonRequestIds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V
    .locals 2

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/String;Ljava/util/List;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getNetworkError()Lcom/audible/mobile/downloader/NetworkError;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/audible/mobile/downloader/NetworkErrorException;->error:Lcom/audible/mobile/downloader/NetworkError;

    return-object v0
.end method

.method public getUserErrorMessage()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/audible/mobile/downloader/NetworkErrorException;->userErrorMessage:Ljava/lang/String;

    return-object v0
.end method
