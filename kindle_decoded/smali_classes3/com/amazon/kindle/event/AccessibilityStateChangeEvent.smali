.class public Lcom/amazon/kindle/event/AccessibilityStateChangeEvent;
.super Ljava/lang/Object;
.source "AccessibilityStateChangeEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field public final accessibilityOn:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/amazon/kindle/event/AccessibilityStateChangeEvent;->accessibilityOn:Z

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
