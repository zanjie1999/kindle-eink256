.class public Lcom/amazon/krf/platform/ContentDecorationPayload;
.super Ljava/lang/Object;
.source "ContentDecorationPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayloadType()Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->BaseContentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    return-object v0
.end method
