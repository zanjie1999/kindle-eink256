.class Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;
.super Ljava/lang/Object;
.source "AndroidNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationInformation"
.end annotation


# instance fields
.field private builder:Landroid/app/Notification$Builder;

.field private id:I


# direct methods
.method public constructor <init>(Landroid/app/Notification$Builder;I)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->builder:Landroid/app/Notification$Builder;

    .line 155
    iput p2, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->id:I

    return-void
.end method


# virtual methods
.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->builder:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->id:I

    return v0
.end method
