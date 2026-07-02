.class synthetic Lcom/amazon/bookwizard/payoff/BorrowBookTask$2;
.super Ljava/lang/Object;
.source "BorrowBookTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/payoff/BorrowBookTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$content$IBook$DownloadState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 93
    invoke-static {}, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->values()[Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$2;->$SwitchMap$com$amazon$kindle$krx$content$IBook$DownloadState:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$2;->$SwitchMap$com$amazon$kindle$krx$content$IBook$DownloadState:[I

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->FAILED:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$2;->$SwitchMap$com$amazon$kindle$krx$content$IBook$DownloadState:[I

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->REMOTE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
