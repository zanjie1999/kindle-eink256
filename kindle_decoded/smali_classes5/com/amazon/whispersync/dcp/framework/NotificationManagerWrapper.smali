.class public Lcom/amazon/whispersync/dcp/framework/NotificationManagerWrapper;
.super Ljava/lang/Object;
.source "NotificationManagerWrapper.java"


# instance fields
.field private final mInner:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationManagerWrapper;->mInner:Landroid/app/NotificationManager;

    return-void
.end method

.method public constructor <init>(Landroid/app/NotificationManager;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/NotificationManagerWrapper;->mInner:Landroid/app/NotificationManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "notification"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/NotificationManagerWrapper;->mInner:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationManagerWrapper;->mInner:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationManagerWrapper;->mInner:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public cancelAll()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationManagerWrapper;->mInner:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationManagerWrapper;->mInner:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public notify(ILcom/amazon/whispersync/dcp/framework/NotificationWrapper;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationManagerWrapper;->mInner:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public notify(Ljava/lang/String;ILcom/amazon/whispersync/dcp/framework/NotificationWrapper;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationManagerWrapper;->mInner:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
