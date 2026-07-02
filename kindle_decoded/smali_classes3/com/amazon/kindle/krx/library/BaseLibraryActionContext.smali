.class public Lcom/amazon/kindle/krx/library/BaseLibraryActionContext;
.super Lcom/amazon/kindle/krx/action/BaseActionContext;
.source "BaseLibraryActionContext.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/LibraryActionContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/kindle/krx/action/BaseActionContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 1

    .line 16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
