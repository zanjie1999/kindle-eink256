.class public Lcom/amazon/kindle/krx/foundation/BasePrioritized;
.super Ljava/lang/Object;
.source "BasePrioritized.java"

# interfaces
.implements Lcom/amazon/kindle/krx/foundation/Prioritized;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
