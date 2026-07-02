.class public Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;
.super Ljava/lang/Object;
.source "DownloadOnDemandFontEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;,
        Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;
    }
.end annotation


# instance fields
.field private errorType:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

.field private eventType:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

.field private font:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->font:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 30
    iput-object p2, p0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->eventType:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    .line 31
    iput-object p3, p0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->errorType:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    return-void
.end method


# virtual methods
.method public getEventType()Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->eventType:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    return-object v0
.end method

.method public getFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->font:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
