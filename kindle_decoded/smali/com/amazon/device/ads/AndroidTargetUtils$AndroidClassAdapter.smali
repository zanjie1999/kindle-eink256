.class public Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;
.super Ljava/lang/Object;
.source "AndroidTargetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AndroidTargetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidClassAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;
    }
.end annotation


# instance fields
.field private final androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AndroidBuildInfo;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;I)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;->isAtLeastAndroidAPI(I)Z

    move-result p0

    return p0
.end method

.method private isAtLeastAndroidAPI(I)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-static {v0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public withWebSettings(Landroid/webkit/WebSettings;)Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;
    .locals 1

    .line 61
    new-instance v0, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;-><init>(Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;Landroid/webkit/WebSettings;)V

    return-object v0
.end method
