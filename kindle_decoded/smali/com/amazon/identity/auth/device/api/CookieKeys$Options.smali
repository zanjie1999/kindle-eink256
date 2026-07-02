.class public final Lcom/amazon/identity/auth/device/api/CookieKeys$Options;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/CookieKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Options"
.end annotation


# static fields
.field public static final KEY_ASSOC_HANDLE:Ljava/lang/String; = "com.amazon.identity.auth.device.api.cookiekeys.assoc_handle"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_FORCE_REFRESH:Ljava/lang/String; = "com.amazon.identity.auth.device.api.cookiekeys.options.forcerefresh"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_INVALIDATE_ACTOR_COOKIES:Ljava/lang/String; = "com.amazon.identity.auth.device.api.cookiekeys.invalidate.actor"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SIGN_IN_URL:Ljava/lang/String; = "com.amazon.identity.auth.device.api.cookiekeys.options.SignInUrl"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field
