.class Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder$SimpleTutorialEvent;
.super Ljava/lang/Object;
.source "TutorialEventBuilder.java"

# interfaces
.implements Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTutorialEvent"
.end annotation


# instance fields
.field private final data:Landroid/os/Bundle;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder$SimpleTutorialEvent;->data:Landroid/os/Bundle;

    .line 29
    iput-object p1, p0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder$SimpleTutorialEvent;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEventData()Landroid/os/Bundle;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder$SimpleTutorialEvent;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder$SimpleTutorialEvent;->name:Ljava/lang/String;

    return-object v0
.end method
