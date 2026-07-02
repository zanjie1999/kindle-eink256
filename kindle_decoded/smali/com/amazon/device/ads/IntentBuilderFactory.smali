.class Lcom/amazon/device/ads/IntentBuilderFactory;
.super Ljava/lang/Object;
.source "IntentBuilderFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createIntentBuilder()Lcom/amazon/device/ads/IntentBuilder;
    .locals 1

    .line 12
    new-instance v0, Lcom/amazon/device/ads/IntentBuilder;

    invoke-direct {v0}, Lcom/amazon/device/ads/IntentBuilder;-><init>()V

    return-object v0
.end method
