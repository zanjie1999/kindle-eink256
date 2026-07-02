.class public Lcom/amazon/android/system/IntentEvent;
.super Ljava/lang/Object;
.source "IntentEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/android/system/IntentEvent;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/android/system/IntentEvent;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
