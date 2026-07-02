.class public Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;
.super Ljava/lang/Object;
.source "AlarmManagerWrapper.java"


# instance fields
.field private final mInner:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;->mInner:Landroid/app/AlarmManager;

    return-void
.end method

.method public constructor <init>(Landroid/app/AlarmManager;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;->mInner:Landroid/app/AlarmManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "alarm"

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;->mInner:Landroid/app/AlarmManager;

    return-void
.end method


# virtual methods
.method public cancel(Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;->mInner:Landroid/app/AlarmManager;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->getInner()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public set(IJLcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;->mInner:Landroid/app/AlarmManager;

    invoke-virtual {p4}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->getInner()Landroid/app/PendingIntent;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public setInexactRepeating(IJJLcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V
    .locals 7

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;->mInner:Landroid/app/AlarmManager;

    invoke-virtual {p6}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->getInner()Landroid/app/PendingIntent;

    move-result-object v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public setRepeating(IJJLcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V
    .locals 7

    .line 39
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;->mInner:Landroid/app/AlarmManager;

    invoke-virtual {p6}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->getInner()Landroid/app/PendingIntent;

    move-result-object v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public setTime(J)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;->mInner:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlarmManager;->setTime(J)V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;->mInner:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method
