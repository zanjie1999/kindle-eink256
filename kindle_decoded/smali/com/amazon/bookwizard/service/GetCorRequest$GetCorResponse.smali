.class public Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;
.super Lcom/amazon/bookwizard/service/EmptyResponse;
.source "GetCorRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetCorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetCorResponse"
.end annotation


# instance fields
.field private cor:Ljava/lang/String;

.field private isInferred:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/amazon/bookwizard/service/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCor()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;->cor:Ljava/lang/String;

    return-object v0
.end method

.method public isInferred()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;->isInferred:Z

    return v0
.end method
