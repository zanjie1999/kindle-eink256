.class public Lcom/audible/mobile/downloader/HttpErrorException;
.super Ljava/lang/IllegalStateException;
.source "HttpErrorException.java"


# instance fields
.field private final detail:Ljava/lang/String;

.field private final responseCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    iput p1, p0, Lcom/audible/mobile/downloader/HttpErrorException;->responseCode:I

    .line 34
    iput-object p2, p0, Lcom/audible/mobile/downloader/HttpErrorException;->detail:Ljava/lang/String;

    return-void
.end method
