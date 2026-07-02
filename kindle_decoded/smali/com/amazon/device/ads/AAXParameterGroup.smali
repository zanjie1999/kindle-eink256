.class abstract Lcom/amazon/device/ads/AAXParameterGroup;
.super Ljava/lang/Object;
.source "AAXParameterGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;,
        Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;
    }
.end annotation


# static fields
.field public static final PUBLISHER_EXTRA_PARAMETERS:Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;

.field public static final USER_ID:Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameterGroup;->USER_ID:Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;

    .line 27
    new-instance v0, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameterGroup;->PUBLISHER_EXTRA_PARAMETERS:Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract evaluate(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONObject;)V
.end method
