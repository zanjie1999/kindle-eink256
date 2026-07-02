.class public Lcom/amazon/ea/CorPfmChangedListener;
.super Landroid/content/BroadcastReceiver;
.source "CorPfmChangedListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/ea/CorPfmChangedListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/CorPfmChangedListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 18
    sget-object p1, Lcom/amazon/ea/CorPfmChangedListener;->TAG:Ljava/lang/String;

    const-string p2, "Receiving COR/PFM change event"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/PurchaseManager;->clear()V

    return-void
.end method
