.class public Lcom/amazon/kindle/krx/action/BaseActionContext;
.super Ljava/lang/Object;
.source "BaseActionContext.java"

# interfaces
.implements Lcom/amazon/kindle/krx/action/ActionContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
