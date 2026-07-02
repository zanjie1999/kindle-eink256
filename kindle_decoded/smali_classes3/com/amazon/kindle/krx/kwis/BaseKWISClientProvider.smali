.class public Lcom/amazon/kindle/krx/kwis/BaseKWISClientProvider;
.super Ljava/lang/Object;
.source "BaseKWISClientProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/kwis/IKWISClientProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTreatment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerDefaultExtraId()Ljava/lang/String;
    .locals 1

    .line 15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public registerWeblabFetchListener(Lcom/amazon/kindle/krx/kwis/IKWISFetchListener;)V
    .locals 0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
