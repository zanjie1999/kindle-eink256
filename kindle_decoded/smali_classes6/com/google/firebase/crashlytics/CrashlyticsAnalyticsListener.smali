.class Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;
.super Ljava/lang/Object;
.source "CrashlyticsAnalyticsListener.java"

# interfaces
.implements Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;


# instance fields
.field private breadcrumbEventReceiver:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;

.field private crashlyticsOriginEventReceiver:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBreadcrumbEventReceiver(Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;->breadcrumbEventReceiver:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;

    return-void
.end method

.method public setCrashlyticsOriginEventReceiver(Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;->crashlyticsOriginEventReceiver:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;

    return-void
.end method
