.class public final Lcom/amazon/kindle/home/card/LibraryCardEvent;
.super Ljava/lang/Object;
.source "HomeWidgetListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;
    }
.end annotation


# instance fields
.field private final displayItem:Ljava/lang/Object;

.field private final eventType:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/home/card/LibraryCardEvent;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/amazon/kindle/home/card/LibraryCardEvent;->displayItem:Ljava/lang/Object;

    iput-object p3, p0, Lcom/amazon/kindle/home/card/LibraryCardEvent;->eventType:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    return-void
.end method


# virtual methods
.method public final getDisplayItem()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/home/card/LibraryCardEvent;->displayItem:Ljava/lang/Object;

    return-object v0
.end method

.method public final getEventType()Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/home/card/LibraryCardEvent;->eventType:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/home/card/LibraryCardEvent;->view:Landroid/view/View;

    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/home/card/LibraryCardEvent;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/home/card/LibraryCardEvent;->displayItem:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/home/card/LibraryCardEvent;->eventType:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
