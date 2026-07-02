.class public final Lcom/amazon/identity/auth/device/api/ADPCorpusSigningAuthenticationMethod$SignCorpusOption;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/ADPCorpusSigningAuthenticationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignCorpusOption"
.end annotation


# static fields
.field public static final USE_FALL_BACK_CREDENTIALS:Ljava/lang/String; = "UseFallBackCredentials"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
