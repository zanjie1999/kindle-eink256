.class public Lcom/amazon/kcp/reader/InfoCardController$InfoCardsStateChangeEvent;
.super Ljava/lang/Object;
.source "InfoCardController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/InfoCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InfoCardsStateChangeEvent"
.end annotation


# instance fields
.field private final isShown:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/InfoCardController;Z)V
    .locals 0

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/InfoCardController$InfoCardsStateChangeEvent;->isShown:Z

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
