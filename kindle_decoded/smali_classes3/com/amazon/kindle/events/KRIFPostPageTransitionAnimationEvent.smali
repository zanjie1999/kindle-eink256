.class public Lcom/amazon/kindle/events/KRIFPostPageTransitionAnimationEvent;
.super Ljava/lang/Object;
.source "KRIFPostPageTransitionAnimationEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private didChangePages:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/amazon/kindle/events/KRIFPostPageTransitionAnimationEvent;->didChangePages:Z

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
