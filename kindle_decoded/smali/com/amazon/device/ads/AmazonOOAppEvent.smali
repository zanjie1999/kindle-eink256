.class public Lcom/amazon/device/ads/AmazonOOAppEvent;
.super Lcom/amazon/device/ads/AppEvent;
.source "AmazonOOAppEvent.java"


# static fields
.field public static final FIRST_LOGIN:Lcom/amazon/device/ads/AmazonOOAppEvent;

.field private static final FIRST_LOGIN_EVENT_NAME:Ljava/lang/String; = "firstLogin"

.field private static final FIRST_PURCHASE_EVENT_NAME:Ljava/lang/String; = "firstPurchase"

.field private static final LOGIN_EVENT_NAME:Ljava/lang/String; = "login"

.field private static final PURCHASE_EVENT_NAME:Ljava/lang/String; = "purchase"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAppEvent;

    const-string v1, "firstLogin"

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AmazonOOAppEvent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/AmazonOOAppEvent;->FIRST_LOGIN:Lcom/amazon/device/ads/AmazonOOAppEvent;

    .line 24
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAppEvent;

    const-string v1, "firstPurchase"

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AmazonOOAppEvent;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAppEvent;

    const-string/jumbo v1, "login"

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AmazonOOAppEvent;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAppEvent;

    const-string/jumbo v1, "purchase"

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AmazonOOAppEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AppEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/AppEvent;-><init>(Ljava/lang/String;J)V

    return-void
.end method
