.class Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;
.super Ljava/lang/Object;
.source "NlnThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/NlnThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThumbnailManagerPollingDelay"
.end annotation


# static fields
.field private static final POLL_THUMBNAIL_MANAGER_DELAY_INIT:I = 0xc8

.field private static final POLL_THUMBNAIL_MANAGER_DELAY_MAX:I = 0x2710

.field private static final POLL_THUMBNAIL_MANAGER_DELAY_RATIO:I = 0x3


# instance fields
.field private pollingDelay:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;->initialize()V

    return-void
.end method


# virtual methods
.method public backoff()V
    .locals 2

    .line 116
    iget v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;->pollingDelay:I

    mul-int/lit8 v0, v0, 0x3

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;->pollingDelay:I

    return-void
.end method

.method public getDelay()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;->pollingDelay:I

    return v0
.end method

.method public initialize()V
    .locals 2

    const/16 v0, 0xc8

    .line 101
    iput v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;->pollingDelay:I

    .line 102
    sget-object v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThumbnailManager polling Delay initialized/reset to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;->pollingDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
