.class public Lcom/amazon/kindle/krx/tutorial/BaseCustomTutorialHandler;
.super Ljava/lang/Object;
.source "BaseCustomTutorialHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/tutorial/ICustomTutorialHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/util/NotImplementedException;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/util/NotImplementedException;-><init>()V

    throw v0
.end method

.method public show(Lcom/amazon/kindle/krx/tutorial/ICustomTutorialCallback;)Z
    .locals 0

    .line 22
    new-instance p1, Lcom/amazon/kindle/krx/util/NotImplementedException;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/util/NotImplementedException;-><init>()V

    throw p1
.end method
