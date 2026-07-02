.class Lcom/audible/hushpuppy/controller/JitTutorialProvider$TutorialEvent;
.super Ljava/lang/Object;
.source "JitTutorialProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/JitTutorialProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TutorialEvent"
.end annotation


# instance fields
.field private final bundle:Landroid/os/Bundle;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/JitTutorialProvider;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TutorialEvent;->name:Ljava/lang/String;

    .line 419
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TutorialEvent;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getEventData()Landroid/os/Bundle;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TutorialEvent;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TutorialEvent;->name:Ljava/lang/String;

    return-object v0
.end method
