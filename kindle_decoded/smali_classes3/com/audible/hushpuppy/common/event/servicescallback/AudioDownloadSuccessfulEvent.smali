.class public Lcom/audible/hushpuppy/common/event/servicescallback/AudioDownloadSuccessfulEvent;
.super Ljava/lang/Object;
.source "AudioDownloadSuccessfulEvent.java"


# instance fields
.field private asin:Ljava/lang/String;

.field private filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/servicescallback/AudioDownloadSuccessfulEvent;->asin:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/audible/hushpuppy/common/event/servicescallback/AudioDownloadSuccessfulEvent;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAsin()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/AudioDownloadSuccessfulEvent;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/AudioDownloadSuccessfulEvent;->filePath:Ljava/lang/String;

    return-object v0
.end method
