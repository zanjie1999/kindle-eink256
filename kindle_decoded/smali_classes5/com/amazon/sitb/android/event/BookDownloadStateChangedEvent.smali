.class public Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;
.super Ljava/lang/Object;
.source "BookDownloadStateChangedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final book:Lcom/amazon/kindle/krx/content/IBook;

.field private previousDownloadState:Lcom/amazon/kindle/krx/content/IBook$DownloadState;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook$DownloadState;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 20
    iput-object p2, p0, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;->previousDownloadState:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    return-void
.end method

.method private toString(Lcom/amazon/kindle/krx/content/IBook$DownloadState;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "<unknown>"

    return-object p1

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public getPreviousDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;->previousDownloadState:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookDownloadStateChangedEvent (DL state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;->previousDownloadState:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    .line 43
    invoke-direct {p0, v1}, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;->toString(Lcom/amazon/kindle/krx/content/IBook$DownloadState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 44
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;->toString(Lcom/amazon/kindle/krx/content/IBook$DownloadState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 45
    invoke-static {v1}, Lcom/amazon/sitb/android/utils/BookUtils;->toString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
