.class public final Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;
.super Ljava/lang/Exception;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileAuthEncryptionKeyManagerException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x66109c21f7597cafL


# instance fields
.field private final mError:Lcom/amazon/identity/auth/device/api/MAPError;

.field private final mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    .line 83
    iput-object p2, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 88
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    .line 90
    iput-object p2, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Lcom/amazon/identity/auth/device/api/MAPError;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method
