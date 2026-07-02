.class public Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;
.super Ljava/lang/Object;
.source "TutorialEventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder$SimpleTutorialEvent;
    }
.end annotation


# instance fields
.field private final data:Landroid/os/Bundle;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->name:Ljava/lang/String;

    .line 51
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->data:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;
    .locals 3

    .line 95
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder$SimpleTutorialEvent;

    iget-object v1, p0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->data:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder$SimpleTutorialEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public withBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public withData(Landroid/os/Bundle;)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public withInt(Ljava/lang/String;I)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public withString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
