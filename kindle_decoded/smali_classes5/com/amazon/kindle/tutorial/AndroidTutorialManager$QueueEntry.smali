.class Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;
.super Ljava/lang/Object;
.source "AndroidTutorialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/AndroidTutorialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueEntry"
.end annotation


# instance fields
.field final activityForegroundCheck:Z

.field final event:Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

.field final topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Z)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;->topic:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;->event:Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    .line 92
    iput-boolean p3, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;->activityForegroundCheck:Z

    return-void
.end method
