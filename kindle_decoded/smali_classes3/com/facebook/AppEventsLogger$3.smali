.class final Lcom/facebook/AppEventsLogger$3;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AppEventsLogger;->initializeTimersIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 648
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getFlushBehavior()Lcom/facebook/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;

    if-eq v0, v1, :cond_0

    .line 649
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->TIMER:Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->access$300(Lcom/facebook/AppEventsLogger$FlushReason;)V

    :cond_0
    return-void
.end method
