.class public Lcom/amazon/kcp/wordwise/download/WordWiseMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WordWiseMessageReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOPIC:Ljava/lang/String; = "DeviceMessaging.LanguageLayer.MessageResponse"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kcp/wordwise/download/WordWiseMessageReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseMessageReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 23
    invoke-static {p2}, Lcom/amazon/dcp/messaging/Message;->constructMessageFromIntent(Landroid/content/Intent;)Lcom/amazon/dcp/messaging/Message;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/amazon/dcp/messaging/Message;->getTopic()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DeviceMessaging.LanguageLayer.MessageResponse"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    .line 26
    new-instance v0, Lcom/amazon/kcp/wordwise/download/WordWiseMessageReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/wordwise/download/WordWiseMessageReceiver$1;-><init>(Lcom/amazon/kcp/wordwise/download/WordWiseMessageReceiver;Lcom/amazon/dcp/messaging/Message;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
