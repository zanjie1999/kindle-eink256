.class public Lcom/amazon/sitb/android/metrics/MetricEventFactory;
.super Ljava/lang/Object;
.source "MetricEventFactory.java"


# instance fields
.field private clockService:Lcom/amazon/sitb/android/services/ClockService;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/services/ClockService;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/sitb/android/metrics/MetricEventFactory;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    return-void
.end method


# virtual methods
.method public create()Lcom/amazon/sitb/android/metrics/MetricEvent;
    .locals 2

    .line 21
    new-instance v0, Lcom/amazon/sitb/android/metrics/MetricEvent;

    iget-object v1, p0, Lcom/amazon/sitb/android/metrics/MetricEventFactory;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    invoke-direct {v0, v1}, Lcom/amazon/sitb/android/metrics/MetricEvent;-><init>(Lcom/amazon/sitb/android/services/ClockService;)V

    return-object v0
.end method
