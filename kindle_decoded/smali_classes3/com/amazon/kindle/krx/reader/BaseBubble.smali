.class public Lcom/amazon/kindle/krx/reader/BaseBubble;
.super Ljava/lang/Object;
.source "BaseBubble.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IBubble;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
