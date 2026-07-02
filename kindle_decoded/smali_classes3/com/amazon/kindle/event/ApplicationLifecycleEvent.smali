.class public final Lcom/amazon/kindle/event/ApplicationLifecycleEvent;
.super Ljava/lang/Object;
.source "ApplicationLifecycleEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final type:Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/event/ApplicationLifecycleEvent;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/kindle/event/ApplicationLifecycleEvent;->type:Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;

    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/kindle/event/ApplicationLifecycleEvent;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getType()Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/kindle/event/ApplicationLifecycleEvent;->type:Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
