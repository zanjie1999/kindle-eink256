.class Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parameters"
.end annotation


# instance fields
.field public additionalSignInParams:Landroid/os/Bundle;

.field public associationHandle:Ljava/lang/String;

.field public claimedId:Ljava/lang/String;

.field public clientContext:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public identity:Ljava/lang/String;

.field public isFederatedAuthentication:Z

.field public pageId:Ljava/lang/String;

.field public prompt:Ljava/lang/String;

.field public requestType:Ljava/lang/String;

.field public returnToURL:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;-><init>()V

    return-void
.end method
