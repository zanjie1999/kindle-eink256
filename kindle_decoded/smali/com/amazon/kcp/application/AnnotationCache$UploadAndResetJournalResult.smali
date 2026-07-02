.class final Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;
.super Ljava/lang/Object;
.source "AnnotationCache.java"

# interfaces
.implements Lcom/amazon/kindle/annotation/IUploadJournalsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AnnotationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UploadAndResetJournalResult"
.end annotation


# static fields
.field static final CONCURRENT_MODIFICATION_DETECTED_INSTANCE:Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;

.field static final SUCCESS_INSTANCE:Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;


# instance fields
.field private final status:Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

.field private final webRequestErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1763
    new-instance v0, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;

    sget-object v1, Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;->SUCCESS:Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;-><init>(Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;)V

    sput-object v0, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;->SUCCESS_INSTANCE:Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;

    .line 1764
    new-instance v0, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;

    sget-object v1, Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;->CONCURRENT_MODIFICATION_DETECTED:Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;-><init>(Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;)V

    sput-object v0, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;->CONCURRENT_MODIFICATION_DETECTED_INSTANCE:Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;)V
    .locals 0

    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1778
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;->status:Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    const/4 p1, 0x0

    .line 1779
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;->webRequestErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
    .locals 1

    .line 1772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1773
    sget-object v0, Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;->WEB_REQUEST_ERROR:Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    iput-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;->status:Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    .line 1774
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;->webRequestErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;
    .locals 1

    .line 1785
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;->status:Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    return-object v0
.end method

.method public getWebRequestErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .locals 1

    .line 1791
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;->webRequestErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-object v0
.end method
