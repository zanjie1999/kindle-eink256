.class public final Lcom/amazon/kindle/services/download/DownloadContentService$Companion;
.super Ljava/lang/Object;
.source "DownloadContentService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/services/download/DownloadContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/amazon/kindle/services/download/DownloadContentService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRETRY_DOWNLOAD_TRIGGER()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;
    .locals 1

    .line 69
    invoke-static {}, Lcom/amazon/kindle/services/download/DownloadContentService;->access$getRETRY_DOWNLOAD_TRIGGER$cp()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    move-result-object v0

    return-object v0
.end method

.method public final getUNTRACKED_DOWNLOAD_TRIGGER()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;
    .locals 1

    .line 68
    invoke-static {}, Lcom/amazon/kindle/services/download/DownloadContentService;->access$getUNTRACKED_DOWNLOAD_TRIGGER$cp()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    move-result-object v0

    return-object v0
.end method
