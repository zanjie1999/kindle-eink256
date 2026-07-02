.class public Lcom/amazon/mlpassistlibrary/VerifyUnknownSourcesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VerifyUnknownSourcesReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MLPAssist-VerifyUnknownSourcesReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 19
    invoke-static {p1}, Lcom/amazon/mlpassistlibrary/UnknownSourcesHelper;->isUnknownSourcesChecked(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 21
    invoke-static {p1}, Lcom/amazon/mlpassistlibrary/UnknownSourcesHelper;->stopPolling(Landroid/content/Context;)V

    .line 22
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/amazon/mlpassistlibrary/GuideActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    .line 23
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
