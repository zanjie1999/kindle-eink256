.class public Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;
.super Ljava/lang/Object;
.source "AppExpanMetricsData.java"


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final event:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->attributes:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->event:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->event:Ljava/lang/String;

    return-object v0
.end method
