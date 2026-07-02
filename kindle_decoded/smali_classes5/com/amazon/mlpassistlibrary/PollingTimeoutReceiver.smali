.class public Lcom/amazon/mlpassistlibrary/PollingTimeoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PollingTimeoutReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MLPAssist-PollingTimeoutReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/amazon/mlpassistlibrary/UnknownSourcesHelper;->stopPolling(Landroid/content/Context;)V

    return-void
.end method
