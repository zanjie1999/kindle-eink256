.class public Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;
.super Ljava/lang/Object;
.source "FontDownloadConfirmationEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;
    }
.end annotation


# instance fields
.field private final m_language:Ljava/lang/String;

.field private final m_type:Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;->m_language:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;->m_type:Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    return-void
.end method


# virtual methods
.method public getFontDownloadConfirmationType()Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;->m_type:Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;->m_language:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
