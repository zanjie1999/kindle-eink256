.class public final Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthPortalActivityUIOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;,
        Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;
    }
.end annotation


# static fields
.field public static final KEY_ABOVE_LOCKSCREEN:Ljava/lang/String; = "AuthPortalActivityUIOptions.aboveLockScreen"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_AMAZON_SCREEN_MODES:Ljava/lang/String; = "AuthPortalActivityUIOptions.amazonScreenModes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_INVERT_SPINNER:Ljava/lang/String; = "progressbar_invert_spinner"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_IS_FULLSCREEN:Ljava/lang/String; = "AuthPortalActivityUIOptions.fullscreen"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PROGRESSBAR_BACKGROUND_RESOURCE:Ljava/lang/String; = "progressbar_background_resource"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PROGRESSBAR_FADE:Ljava/lang/String; = "progressbar_fade"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PROGRESSBAR_POSITION:Ljava/lang/String; = "progressbar_position"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PROGRESSBAR_PRIMARY_COLOR:Ljava/lang/String; = "progressbar_primary_color"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PROGRESSBAR_RESOURCE:Ljava/lang/String; = "progressbar_resource"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PROGRESSBAR_SECONDARY_COLOR:Ljava/lang/String; = "progressbar_secondary_color"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PROGRESSBAR_STATE:Ljava/lang/String; = "progressbar_state"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PROGRESSBAR_STRETCH:Ljava/lang/String; = "progressbar_stretch"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_REQUESTED_ORIENTATION:Ljava/lang/String; = "AuthPortalActivityUIOptions.requestedOrientation"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SPLASH_SCREEN_RESOURCE:Ljava/lang/String; = "splashscreen_resource"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SPLASH_SCREEN_SCALE_TYPE:Ljava/lang/String; = "splashscreen_scale_type"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SYSTEM_UI_VISIBILITY:Ljava/lang/String; = "AuthPortalActivityUIOptions.systemUiVisibility"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_WINDOW_FLAGS:Ljava/lang/String; = "AuthPortalActivityUIOptions.windowFlags"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
