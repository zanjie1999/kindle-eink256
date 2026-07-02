.class public abstract Lcom/amazon/ksdk/profiles/SimpleRequestCallback;
.super Ljava/lang/Object;
.source "SimpleRequestCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFailure(Lcom/amazon/ksdk/profiles/RequestErrorCode;)V
.end method

.method public abstract onSuccess()V
.end method
