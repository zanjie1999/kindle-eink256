.class public Lcom/amazon/kcp/home/events/ResumeWidgetEvent;
.super Ljava/lang/Object;
.source "ResumeWidgetEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/events/ResumeWidgetEvent$EventType;
    }
.end annotation


# instance fields
.field private final eventType:Lcom/amazon/kcp/home/events/ResumeWidgetEvent$EventType;

.field private final itemData:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/home/events/ResumeWidgetEvent$EventType;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/home/events/ResumeWidgetEvent;->view:Landroid/view/View;

    .line 24
    iput-object p2, p0, Lcom/amazon/kcp/home/events/ResumeWidgetEvent;->itemData:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 25
    iput-object p3, p0, Lcom/amazon/kcp/home/events/ResumeWidgetEvent;->eventType:Lcom/amazon/kcp/home/events/ResumeWidgetEvent$EventType;

    return-void
.end method


# virtual methods
.method public getItemData()Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/home/events/ResumeWidgetEvent;->itemData:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    return-object v0
.end method
