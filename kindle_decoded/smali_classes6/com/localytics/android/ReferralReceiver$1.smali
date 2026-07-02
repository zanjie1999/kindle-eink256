.class Lcom/localytics/android/ReferralReceiver$1;
.super Ljava/lang/Object;
.source "ReferralReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/ReferralReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$provider:Lcom/localytics/android/LocalyticsProvider;

.field final synthetic val$referrer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/ReferralReceiver;Ljava/lang/String;Lcom/localytics/android/LocalyticsProvider;)V
    .locals 0

    .line 72
    iput-object p2, p0, Lcom/localytics/android/ReferralReceiver$1;->val$referrer:Ljava/lang/String;

    iput-object p3, p0, Lcom/localytics/android/ReferralReceiver$1;->val$provider:Lcom/localytics/android/LocalyticsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 75
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/localytics/android/ReferralReceiver$1;->val$referrer:Ljava/lang/String;

    const-string v2, "play_attribution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/localytics/android/ReferralReceiver$1;->val$provider:Lcom/localytics/android/LocalyticsProvider;

    const/4 v2, 0x0

    const-string v3, "info"

    invoke-virtual {v1, v3, v0, v2, v2}, Lcom/localytics/android/LocalyticsProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
