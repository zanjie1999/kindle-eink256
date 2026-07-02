.class public final Lcom/amazon/identity/auth/device/api/CookieKeys;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/CookieKeys$Options;
    }
.end annotation


# static fields
.field public static final KEY_COOKIES:Ljava/lang/String; = "com.amazon.identity.auth.device.api.cookiekeys.all"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_INVALIDATE_COOKIES:Ljava/lang/String; = "invalidate-cookies"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_RESPONSE_URL:Ljava/lang/String; = "com.amazon.identity.auth.device.api.cookiekeys.ResponseUrl"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
