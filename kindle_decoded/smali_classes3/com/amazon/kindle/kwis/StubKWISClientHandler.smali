.class public Lcom/amazon/kindle/kwis/StubKWISClientHandler;
.super Ljava/lang/Object;
.source "StubKWISClientHandler.java"

# interfaces
.implements Lcom/amazon/kindle/kwis/IKWISClientHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTreatment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "C"

    return-object p1
.end method

.method public registerDefaultExtraId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public registerWeblabFetchListener(Lcom/amazon/kindle/krx/kwis/IKWISFetchListener;)V
    .locals 0

    return-void
.end method
