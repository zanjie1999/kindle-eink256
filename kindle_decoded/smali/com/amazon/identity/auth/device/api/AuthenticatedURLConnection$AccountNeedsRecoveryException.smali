.class public Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;
.super Ljava/io/IOException;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountNeedsRecoveryException"
.end annotation


# instance fields
.field private final mAccountRecoverContextBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 156
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 157
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;->mAccountRecoverContextBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getAccountRecoverContextBundle()Landroid/os/Bundle;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;->mAccountRecoverContextBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getExtraBundle()Landroid/os/Bundle;
    .locals 3

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;->mAccountRecoverContextBundle:Landroid/os/Bundle;

    const-string v2, "com.amazon.identity.mobi.account.recover.context"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
