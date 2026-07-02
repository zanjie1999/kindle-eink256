.class public Lcom/amazon/identity/auth/device/api/MAPError;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/MAPError$ActorError;,
        Lcom/amazon/identity/auth/device/api/MAPError$CommonError;,
        Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;,
        Lcom/amazon/identity/auth/device/api/MAPError$TokenError;,
        Lcom/amazon/identity/auth/device/api/MAPError$AccountError;,
        Lcom/amazon/identity/auth/device/api/MAPError$MAPErrorMethods;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_PREFIX:Ljava/lang/String; = "com.amazon.map.error."

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "com.amazon.map.error.errorCode"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "com.amazon.map.error.errorMessage"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ERROR_TYPE:Ljava/lang/String; = "com.amazon.map.error.errorType"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SHOULD_CLEAR_AUTH_COOKIES:Ljava/lang/String; = "com.amazon.map.error.shouldClearAuthCookies"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/amazon/identity/auth/device/api/MAPError;->mErrorCode:I

    .line 82
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPError;->mErrorMessage:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPError;->mErrorType:Ljava/lang/String;

    return-void
.end method

.method static g(I)Lcom/amazon/identity/auth/device/api/MAPError;
    .locals 6

    const/16 v0, 0xc8

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-lt p0, v2, :cond_1

    if-ge p0, v0, :cond_1

    .line 719
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->values()[Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 721
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->getErrorCode()I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 723
    new-instance p0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    invoke-direct {p0, v4, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;B)V

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x12c

    if-lt p0, v0, :cond_3

    if-ge p0, v2, :cond_3

    .line 731
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPError$TokenError$TokenErrorEnum;->values()[Lcom/amazon/identity/auth/device/api/MAPError$TokenError$TokenErrorEnum;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 733
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPError$TokenError$TokenErrorEnum;->getErrorCode()I

    move-result v5

    if-ne v5, p0, :cond_2

    .line 735
    new-instance p0, Lcom/amazon/identity/auth/device/api/MAPError$TokenError;

    invoke-direct {p0, v4, v1}, Lcom/amazon/identity/auth/device/api/MAPError$TokenError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$TokenError$TokenErrorEnum;B)V

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/16 v0, 0x190

    if-lt p0, v2, :cond_5

    if-ge p0, v0, :cond_5

    .line 743
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->values()[Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 745
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->getErrorCode()I

    move-result v5

    if-ne v5, p0, :cond_4

    .line 747
    new-instance p0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    invoke-direct {p0, v4, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;B)V

    return-object p0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/16 v2, 0x1f4

    if-lt p0, v0, :cond_7

    if-ge p0, v2, :cond_7

    .line 755
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->values()[Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 757
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->getErrorCode()I

    move-result v5

    if-ne v5, p0, :cond_6

    .line 759
    new-instance p0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-direct {p0, v4, v1}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;B)V

    return-object p0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    if-lt p0, v2, :cond_9

    const/16 v0, 0x258

    if-ge p0, v0, :cond_9

    .line 767
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;->values()[Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 769
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;->getErrorCode()I

    move-result v5

    if-ne v5, p0, :cond_8

    .line 771
    new-instance p0, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;

    invoke-direct {p0, v4, v1}, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;B)V

    return-object p0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getErrorFromValue(I)Lcom/amazon/identity/auth/device/api/MAPError;
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 685
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/MAPError;->g(I)Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorFromValue(ILcom/amazon/identity/auth/device/api/MAPError;)Lcom/amazon/identity/auth/device/api/MAPError;
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 702
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/MAPError;->g(I)Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 92
    iget v0, p0, Lcom/amazon/identity/auth/device/api/MAPError;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPError;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPError;->mErrorType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPError;->mErrorType:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/identity/auth/device/api/MAPError;->mErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPError;->mErrorMessage:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "MAPError: %s , ErrorCode: %d , ErrorMessage: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
