.class public final Lcom/audible/hushpuppy/common/event/reader/OverlayVisibilityChangedEvent;
.super Ljava/lang/Object;
.source "OverlayVisibilityChangedEvent.java"


# instance fields
.field private final overlaysAppearing:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/audible/hushpuppy/common/event/reader/OverlayVisibilityChangedEvent;->overlaysAppearing:Z

    return-void
.end method


# virtual methods
.method public areOverlaysAppearing()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/audible/hushpuppy/common/event/reader/OverlayVisibilityChangedEvent;->overlaysAppearing:Z

    return v0
.end method
