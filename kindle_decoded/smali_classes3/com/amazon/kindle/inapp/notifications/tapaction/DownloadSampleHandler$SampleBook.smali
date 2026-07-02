.class public final Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler$SampleBook;
.super Lcom/amazon/kindle/krx/content/BaseBook;
.source "DownloadSampleHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SampleBook"
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p1, "asin"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BaseBook;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler$SampleBook;->asin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getASIN()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler$SampleBook;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthors()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler$SampleBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
