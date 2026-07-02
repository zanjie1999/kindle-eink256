.class public Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;
.super Ljava/lang/Object;
.source "PluginVisibilityLifeCycleEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;
    }
.end annotation


# instance fields
.field private mEventType:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

.field private mPluginID:Ljava/lang/String;

.field private mPluginName:Ljava/lang/String;

.field private mTimeStamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;->mTimeStamp:Ljava/util/Date;

    .line 39
    iput-object p2, p0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;->mEventType:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    .line 40
    iput-object p3, p0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;->mPluginName:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;->mPluginID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEventType()Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;->mEventType:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    return-object v0
.end method

.method public getPluginID()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;->mPluginID:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;->mPluginName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;->mTimeStamp:Ljava/util/Date;

    return-object v0
.end method
