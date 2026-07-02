.class public Lcom/amazon/sitb/android/broadcasts/BroadcastReceiverInfo;
.super Ljava/lang/Object;
.source "BroadcastReceiverInfo.java"


# instance fields
.field private final broadcastListener:Lcom/amazon/kindle/krx/system/IBroadcastListener;

.field private final intentType:Lcom/amazon/kindle/krx/system/IntentType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/system/IBroadcastListener;Lcom/amazon/kindle/krx/system/IntentType;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/sitb/android/broadcasts/BroadcastReceiverInfo;->broadcastListener:Lcom/amazon/kindle/krx/system/IBroadcastListener;

    .line 20
    iput-object p2, p0, Lcom/amazon/sitb/android/broadcasts/BroadcastReceiverInfo;->intentType:Lcom/amazon/kindle/krx/system/IntentType;

    return-void
.end method


# virtual methods
.method public getBroadcastListener()Lcom/amazon/kindle/krx/system/IBroadcastListener;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/sitb/android/broadcasts/BroadcastReceiverInfo;->broadcastListener:Lcom/amazon/kindle/krx/system/IBroadcastListener;

    return-object v0
.end method

.method public getIntentType()Lcom/amazon/kindle/krx/system/IntentType;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/sitb/android/broadcasts/BroadcastReceiverInfo;->intentType:Lcom/amazon/kindle/krx/system/IntentType;

    return-object v0
.end method
