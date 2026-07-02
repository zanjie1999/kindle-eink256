.class public final Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalOptions;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthPortalOptions"
.end annotation


# static fields
.field public static final KEY_ADDITIONAL_SIGN_IN_PARAMETERS:Ljava/lang/String; = "com.amazon.identity.ap.additionalSignInParameters"

.field public static final KEY_ASSOCIATION_HANDLE:Ljava/lang/String; = "com.amazon.identity.ap.assoc_handle"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_CLIENT_CONTEXT:Ljava/lang/String; = "com.amazon.identity.ap.clientContext"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_DOMAIN:Ljava/lang/String; = "com.amazon.identity.ap.domain"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PAGEID:Ljava/lang/String; = "com.amazon.identity.ap.pageid"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_PREFIX:Ljava/lang/String; = "com.amazon.identity.ap"

.field public static final KEY_REQUEST_PARAMETERS:Ljava/lang/String; = "com.amazon.identity.ap.request.parameters"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
