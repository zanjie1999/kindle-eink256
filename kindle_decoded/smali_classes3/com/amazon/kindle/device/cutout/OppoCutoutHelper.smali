.class public Lcom/amazon/kindle/device/cutout/OppoCutoutHelper;
.super Ljava/lang/Object;
.source "OppoCutoutHelper.java"

# interfaces
.implements Lcom/amazon/kindle/device/cutout/ICutoutHelper;


# static fields
.field private static final OPPO_NOTCH_HEIGHT:I = 0x50


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasCutout(Landroid/content/Context;)Z
    .locals 1

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getPortraitSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 2

    .line 16
    invoke-direct {p0, p1}, Lcom/amazon/kindle/device/cutout/OppoCutoutHelper;->hasCutout(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {p1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    return-object p1

    .line 20
    :cond_0
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    const/16 v0, 0x50

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, v1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    return-object p1
.end method
