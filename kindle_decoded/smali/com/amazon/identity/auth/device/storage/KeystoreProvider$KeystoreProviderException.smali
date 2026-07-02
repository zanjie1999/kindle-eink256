.class public final Lcom/amazon/identity/auth/device/storage/KeystoreProvider$KeystoreProviderException;
.super Ljava/lang/Exception;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/storage/KeystoreProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeystoreProviderException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x66109c21f7597cafL


# instance fields
.field private final mError:Lcom/amazon/identity/auth/device/api/MAPError;

.field private final mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 44
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/KeystoreProvider$KeystoreProviderException;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    .line 46
    iput-object p2, p0, Lcom/amazon/identity/auth/device/storage/KeystoreProvider$KeystoreProviderException;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/KeystoreProvider$KeystoreProviderException;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method
