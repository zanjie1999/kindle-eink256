.class public Lcom/amazon/device/ads/AdRegistration;
.super Ljava/lang/Object;
.source "AdRegistration.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AdRegistration"

.field private static final amazonAdRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-class v0, Lcom/amazon/device/ads/AdRegistration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/amazon/device/ads/AdRegistrationExecutor;

    invoke-direct {v1, v0}, Lcom/amazon/device/ads/AdRegistrationExecutor;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/device/ads/AdRegistration;->amazonAdRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;
    .locals 1

    .line 106
    sget-object v0, Lcom/amazon/device/ads/AdRegistration;->amazonAdRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    return-object v0
.end method
