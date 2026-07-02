.class public Lcom/amazon/kindle/attribution/AttributionModule;
.super Ljava/lang/Object;
.source "AttributionModule.java"

# interfaces
.implements Lcom/amazon/kindle/config/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/attribution/AttributionModule$AuthenticationListener;,
        Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/amazon/kindle/attribution/AttributionModule;


# instance fields
.field private authListener:Lcom/amazon/kindle/attribution/AttributionModule$AuthenticationListener;

.field private fbAttribution:Lcom/amazon/kindle/attribution/FirstStartAttribution;

.field private mobileAds:Lcom/amazon/kindle/attribution/MobileAdsHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDependentModules()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "AttributionModule"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    .line 56
    sput-object p0, Lcom/amazon/kindle/attribution/AttributionModule;->INSTANCE:Lcom/amazon/kindle/attribution/AttributionModule;

    .line 58
    new-instance p1, Lcom/amazon/kindle/attribution/AttributionModule$AuthenticationListener;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/attribution/AttributionModule$AuthenticationListener;-><init>(Lcom/amazon/kindle/attribution/AttributionModule;)V

    iput-object p1, p0, Lcom/amazon/kindle/attribution/AttributionModule;->authListener:Lcom/amazon/kindle/attribution/AttributionModule$AuthenticationListener;

    .line 59
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/attribution/AttributionModule;->authListener:Lcom/amazon/kindle/attribution/AttributionModule$AuthenticationListener;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 61
    new-instance p1, Lcom/amazon/kindle/attribution/FirstStartAttribution;

    invoke-direct {p1}, Lcom/amazon/kindle/attribution/FirstStartAttribution;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/attribution/AttributionModule;->fbAttribution:Lcom/amazon/kindle/attribution/FirstStartAttribution;

    .line 62
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/attribution/AttributionModule;->fbAttribution:Lcom/amazon/kindle/attribution/FirstStartAttribution;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 64
    new-instance p1, Lcom/amazon/kindle/attribution/MobileAdsHandler;

    invoke-direct {p1}, Lcom/amazon/kindle/attribution/MobileAdsHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/attribution/AttributionModule;->mobileAds:Lcom/amazon/kindle/attribution/MobileAdsHandler;

    .line 65
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/attribution/AttributionModule;->mobileAds:Lcom/amazon/kindle/attribution/MobileAdsHandler;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Lcom/amazon/kindle/event/UserEventRecorder;->getInstance()Lcom/amazon/kindle/event/UserEventRecorder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/event/UserEventRecorder;->onAppStarted()V

    return-void
.end method
