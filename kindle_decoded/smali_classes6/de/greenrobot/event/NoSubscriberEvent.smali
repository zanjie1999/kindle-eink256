.class public final Lde/greenrobot/event/NoSubscriberEvent;
.super Ljava/lang/Object;
.source "NoSubscriberEvent.java"


# instance fields
.field public final originalEvent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lde/greenrobot/event/NoSubscriberEvent;->originalEvent:Ljava/lang/Object;

    return-void
.end method
