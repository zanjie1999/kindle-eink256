.class Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final lY:I

.field private lZ:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;->mActivity:Landroid/app/Activity;

    .line 55
    iput p2, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;->lY:I

    .line 56
    new-instance p2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {p2, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p2, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 58
    invoke-virtual {p2, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 59
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 60
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;->lZ:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method


# virtual methods
.method public h(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;-><init>()V

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->setShowCancelButton(Z)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->setPrompt(I)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v0

    .line 70
    new-instance v2, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;-><init>()V

    .line 71
    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setHintPickerConfig(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    move-result-object v0

    sget-object v2, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;->PHONE:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    .line 72
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setPhoneNumberIdentifierSupported(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    move-result-object v0

    sget-object v2, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;->NAME:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    .line 73
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;->EMAIL:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setEmailAddressIdentifierSupported(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/HintRequest;

    move-result-object p1

    .line 75
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;->lZ:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->getHintPickerIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    iget v2, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;->lY:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "CustomerInfoManager"

    const-string v0, "google api client onConnected"

    .line 82
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "google api client onConnectionFailed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CustomerInfoManager"

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    const-string p1, "CustomerInfoManager"

    const-string v0, "google api client onConnectionSuspended"

    .line 88
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
