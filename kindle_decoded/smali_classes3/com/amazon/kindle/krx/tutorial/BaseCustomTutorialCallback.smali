.class public Lcom/amazon/kindle/krx/tutorial/BaseCustomTutorialCallback;
.super Ljava/lang/Object;
.source "BaseCustomTutorialCallback.java"

# interfaces
.implements Lcom/amazon/kindle/krx/tutorial/ICustomTutorialCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTutorialDismissed()V
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/util/NotImplementedException;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/util/NotImplementedException;-><init>()V

    throw v0
.end method
