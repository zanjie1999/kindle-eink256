.class public Lcom/amazon/identity/kcpsdk/common/BackoffException;
.super Ljava/io/IOException;
.source "DCP"


# instance fields
.field private final mBackoffInfo:Lcom/amazon/identity/auth/device/lp;

.field private final mErrorCode:I

.field private final mErrorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/lp;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/kcpsdk/common/BackoffException;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/lp;B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/lp;B)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p3, -0x1

    .line 21
    iput p3, p0, Lcom/amazon/identity/kcpsdk/common/BackoffException;->mErrorCode:I

    .line 22
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/common/BackoffException;->mErrorMsg:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amazon/identity/kcpsdk/common/BackoffException;->mBackoffInfo:Lcom/amazon/identity/auth/device/lp;

    return-void
.end method
